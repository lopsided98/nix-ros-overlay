
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-stereo-msgs";
  version = "5.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/stereo_msgs/5.10.3-1.tar.gz";
    name = "5.10.3-1.tar.gz";
    sha256 = "03dd5fae69cf8739ab5748c50c09f0114961920a0016ee4c7f72f2d853b9a2a1";
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
