
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-galactic-rcl-logging-interface";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/galactic/rcl_logging_interface/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "bf5cae9873a7eab2261a331102da5f8e25137e0deb15f14038a3a11550de903f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common rcpputils ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Interface that rcl_logging backends needs to implement.'';
    license = with lib.licenses; [ asl20 ];
  };
}
