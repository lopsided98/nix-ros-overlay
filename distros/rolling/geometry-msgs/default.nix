
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-geometry-msgs";
  version = "5.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/geometry_msgs/5.7.0-1.tar.gz";
    name = "5.7.0-1.tar.gz";
    sha256 = "d68b1cf65b632ff1f4f846ac312e25bfbe26b84eb12ddf74ada04662570a01a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some geometry related message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
