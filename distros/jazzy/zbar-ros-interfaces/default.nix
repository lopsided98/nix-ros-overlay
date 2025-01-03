
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-zbar-ros-interfaces";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/jazzy/zbar_ros_interfaces/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "4a13f0de6ee7f5d2e5857d8458d69cbfeecd5e1bc336d13e76652ed555020e6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing interfaces for zbar_ros to use to publish results";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
