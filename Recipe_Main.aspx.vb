﻿
Partial Class Recipe_Main
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleting(sender As Object, e As DetailsViewDeleteEventArgs) Handles DetailsView1.ItemDeleting


    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("Edit.aspx")
    End Sub

    Protected Sub SqlDataSource1_Deleted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles SqlDataSource1.Deleted
        Response.Redirect("Delete.aspx")
        'MsgBox("Your Text Goes Here")

    End Sub

    Protected Sub tb_ed_submit_by_TextChanged(sender As Object, e As EventArgs)

    End Sub

End Class
