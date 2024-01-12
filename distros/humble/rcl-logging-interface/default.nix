
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-humble-rcl-logging-interface";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/humble/rcl_logging_interface/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "7b42e9719cd812d094f0acba161911ad6ed6b559b4b1c5201482384c60b78bf4";
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
