
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-py-common, rqt-gui, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-rqt-service-caller";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/crystal/rqt_service_caller/1.0.1-0.tar.gz;
    sha256 = "d8850f2897289e4414da4a2daf77e2f00e81c24e6753668e18c257b32ad53917";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py rqt-py-common rqt-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
