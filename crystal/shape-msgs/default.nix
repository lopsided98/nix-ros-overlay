
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-shape-msgs";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/common_interfaces-release/archive/release/crystal/shape_msgs/0.6.1-0.tar.gz;
    sha256 = "2bd53e9b315efdb349d6e057dd5d95c1ea48a947974cae7cbacb4cccf3bae682";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some message definitions which describe geometric shapes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
