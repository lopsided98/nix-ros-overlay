
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-geometry-msgs";
  version = "5.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/geometry_msgs/5.3.0-2.tar.gz";
    name = "5.3.0-2.tar.gz";
    sha256 = "beb3c51b574e9c6918ddba2e88c9dcb7f585274620bc635d840a6ec19b268530";
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
