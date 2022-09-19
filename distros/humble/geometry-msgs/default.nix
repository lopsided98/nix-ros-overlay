
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-geometry-msgs";
  version = "4.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/geometry_msgs/4.2.2-1.tar.gz";
    name = "4.2.2-1.tar.gz";
    sha256 = "f73bf0ef9d2f6e807597b672734c3721ae42a082f590327a168e4d16362cf700";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some geometry related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
