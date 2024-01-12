
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-iron-rqt-service-caller";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/iron/rqt_service_caller/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "fd8e114fa96c265a388f0a986f96679aca6797d139a81cca9bf9141550f6c89d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
