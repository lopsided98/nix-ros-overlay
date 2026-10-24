
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-geometry-msgs";
  version = "5.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/geometry_msgs/5.10.3-1.tar.gz";
    name = "5.10.3-1.tar.gz";
    sha256 = "52b52dbafb5e35453c4cf55b70bc8f4343e7ddc86ae6f92c8e6c09c3c5e119e6";
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
