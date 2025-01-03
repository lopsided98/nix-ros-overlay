
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-service-caller";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/jazzy/rqt_service_caller/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "d485c369b7be5b4be201db9781a952869d8cc0a5b1fd12d371c3d9c9f5a6b3b4";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_service_caller provides a GUI plugin for calling arbitrary services.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
