
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, ament-lint-common, launch-testing, sensor-msgs, launch, launch-testing-ament-cmake, rclcpp, std-msgs, ament-lint-auto, opencv3 }:
buildRosPackage {
  pname = "ros-dashing-intra-process-demo";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/intra_process_demo/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "2f76ca5b6bd2a7a3578f5528873fa80335e73dbc91914e299b75122830fc8661";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs opencv3 rclcpp ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch launch-testing-ament-cmake ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs opencv3 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrations of intra process communication.'';
    license = with lib.licenses; [ asl20 ];
  };
}
