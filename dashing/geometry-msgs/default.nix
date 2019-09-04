
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-geometry-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/common_interfaces-release/archive/release/dashing/geometry_msgs/0.7.0-1.tar.gz;
    sha256 = "b0ca096be9cc17931c61fe21daccc4d8f9ed03cc7ad32dd7046fed39fcccea85";
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
