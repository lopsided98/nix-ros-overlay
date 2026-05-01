
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-stereo-msgs";
  version = "5.9.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/lyrical/stereo_msgs/5.9.2-3.tar.gz";
    name = "5.9.2-3.tar.gz";
    sha256 = "5d99a07bbfd32e9eac81dccd6d9766505a2804b580d608bb55f4a62b653b1dd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some stereo camera related message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
