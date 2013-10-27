
Partial Class Saved
    Inherits System.Web.UI.Page

    Protected Sub Page_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        Response.AddHeader("refresh", "2;url=Default.aspx")
    End Sub
End Class
