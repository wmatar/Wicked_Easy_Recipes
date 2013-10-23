
Partial Class Recipe_Main
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("Default.aspx", False)
    End Sub
End Class
