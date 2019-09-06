
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-py-common, rqt-gui, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-rqt-service-caller";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/dashing/rqt_service_caller/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "29c79f62f406d3678ffa0def179221bdba2298de32b7100b6989fdfcbab8a52a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py rqt-py-common rqt-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
