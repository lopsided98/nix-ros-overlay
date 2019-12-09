
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-crystal-geometry-msgs";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/crystal/geometry_msgs/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "b7f94748df58d15b6b2235a8be0e7ea51f2b72adb73c4f4ae137a38899a3a40f";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some geometry related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
