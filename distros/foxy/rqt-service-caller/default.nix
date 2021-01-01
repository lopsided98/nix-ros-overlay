
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-foxy-rqt-service-caller";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/foxy/rqt_service_caller/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d2a4f3faacd84fabf25ae3e83193880fd3d8918c02b6727eadad513a18284afe";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
