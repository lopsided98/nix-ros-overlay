
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-trimble-interfaces";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trimble_driver_ros-release/archive/release/jazzy/trimble_interfaces/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "667832cb0268e80d1adcd20ce2e5365f0bad1d7818c12893396730c2afe5e046";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Trimble interfaces";
    license = with lib.licenses; [ bsd2 ];
  };
}
