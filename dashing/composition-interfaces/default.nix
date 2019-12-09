
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, rcl-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-dashing-composition-interfaces";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/dashing/composition_interfaces/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "9b05bac2977c8dd1a52023c07e094eea1b0ca12550944f86cc370ba365b9ca5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime rcl-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing message and service definitions for managing composable nodes in a container process.'';
    license = with lib.licenses; [ asl20 ];
  };
}
