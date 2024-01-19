
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-service-caller";
  version = "1.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/humble/rqt_service_caller/1.0.5-3.tar.gz";
    name = "1.0.5-3.tar.gz";
    sha256 = "2b6452bbaefe8194e87be8624ffefd4869e70c552dcd7bd6ffe93573cae790c2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
