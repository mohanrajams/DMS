<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fields.aspx.cs" Inherits="MockUI.Fields" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Field Creation</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />


</head>
<body>
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
                <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                    <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline">METRO DMS</span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                        <li class="nav-item">
                            <a href="#" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-diagram-3-fill"></i><span class="ms-1 d-none d-sm-inline">Department</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Fields.aspx" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-shop"></i><span class="ms-1 d-none d-sm-inline">Vendor</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Fields.aspx" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-person"></i><span class="ms-1 d-none d-sm-inline">User</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Fields.aspx" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-clipboard-data"></i><span class="ms-1 d-none d-sm-inline">Field</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Fields.aspx" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-bezier2"></i><span class="ms-1 d-none d-sm-inline">Workflow</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Fields.aspx" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-archive"></i><span class="ms-1 d-none d-sm-inline">Lookup</span>
                            </a>
                        </li>
                    </ul>
                    <hr />
                    <div class="dropdown pb-4">
                        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="rounded-rounded-circle">
                                <i class="bi bi-person-circle"></i>
                                <span class="d-none d-sm-inline mx-1">User</span>
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item" href="#">Sign out</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col py-3" style="margin: 15px 0px 0px 15px">
                <div class="row">
                    <div class="col-2">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-clipboard-plus-fill" viewBox="0 0 20 20">
                                <path d="M6.5 0A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0zm3 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5z" />
                                <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1A2.5 2.5 0 0 1 9.5 5h-3A2.5 2.5 0 0 1 4 2.5zm4.5 6V9H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V10H6a.5.5 0 0 1 0-1h1.5V7.5a.5.5 0 0 1 1 0" />
                            </svg>
                            Add Field
                        </button>
                    </div>
                </div>
                <div class="row">
                    <table id="example" class="table table-striped" style="width: 100%">
                        <thead>
                            <tr>
                                <th>Request Type</th>
                                <th>Field Name</th>
                                <th>Field Type</th>
                                <th>Mandatory</th>
                                <th>Placeholder Value</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Tunnel construction</td>
                                <td>Reference Number</td>
                                <td>Auto Generated</td>
                                <td>Yes</td>
                                <td>Auto Generated</td>
                                <td>Edit</td>
                            </tr>
                            <tr>
                                <td>Tunnel construction</td>
                                <td>Document Received Date</td>
                                <td>Date</td>
                                <td>Yes</td>
                                <td>dd/mm/yyyy</td>
                                <td>Edit</td>
                            </tr>
                            <tr>
                                <td>Tunnel construction</td>
                                <td>Document Date</td>
                                <td>Date</td>
                                <td>Yes</td>
                                <td>dd/mm/yyyy</td>
                                <td>Edit</td>
                            </tr>
                            <tr>
                                <td>Tunnel construction</td>
                                <td>Contract Code</td>
                                <td>Dropdown</td>
                                <td>Yes</td>
                                <td>Select Value</td>
                                <td>Edit</td>
                            </tr>
                            <tr>
                                <td>Tunnel construction</td>
                                <td>Tunnel Diagram</td>
                                <td>File upload</td>
                                <td>Yes</td>
                                <td>Upload file</td>
                                <td>Edit</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Field</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">

                    <div class="row">
                        <div class="form-group">
                            <label for="requestType">Request Type</label>
                            <select id="requestType" class="form-control">
                                <option>Tunnel Construction</option>
                                <option>Pillar Construction</option>
                                <option>Lift Maintenace</option>
                                <option>Light Maintenace</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <label for="fieldType">Field Type</label>
                            <select id="fieldType" class="form-control">
                                <option>Text</option>
                                <option>Date</option>
                                <option>Dropdown</option>
                                <option>Checkbox</option>
                                <option>Fileupload</option>
                                <option>Auto Generated</option>
                                <option>Number</option>
                                <option>Money</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <label for="fieldName">Field Name</label>
                            <input id="fieldName" class="form-control" type="text" />
                        </div>
                    </div>

                     <div class="row">
                        <div class="form-group">
                            <label for="placeholder">Placeholder value</label>
                            <input id="placeholder" class="form-control" type="text" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-check form-switch" style="margin:10px 0px 0px -25px">
                            <input class="form-check-input mx-2"
                                type="checkbox"
                                role="switch"
                                id="flexSwitchCheckDefault"
                                checked="checked"
                                style="transform: scale(1.8);"/>

                            <label class="form-check-label"
                                for="flexSwitchCheckDefault"
                                id="AucTu">.            Mandatory</label>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
