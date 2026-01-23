
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-service-caller";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/jazzy/rqt_service_caller/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "4d9418270204e99f74a0ae5e5fa169329ff169c7b34cb8b52a58c635832e2e89";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_service_caller provides a GUI plugin for calling arbitrary services.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
