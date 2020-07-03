Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If (TextBox1.Text <> "" Or Calendar1.SelectedDate.ToString() <> "") Then

            SqlDataSource2.InsertCommandType = SqlDataSourceCommandType.Text
            SqlDataSource2.InsertCommand = "Insert into tasks (task,due) VALUES (@Label1,@Label2)"

            SqlDataSource2.InsertParameters.Add("Label1", TextBox1.Text)
            SqlDataSource2.InsertParameters.Add("Label2", Calendar1.SelectedDate.ToString())

            Dim Resu = SqlDataSource2.Insert()

            Label1.Visible = True
            Label1.Text = "Last Database Insert: " + Resu.ToString()
        Else
            Label1.Text = "Please fill the date and task"
        End If

        ' SqlDataSource1.Insert("INSERT INTO Table (Task,Due By) VALUES (@,@)")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged



    End Sub
End Class