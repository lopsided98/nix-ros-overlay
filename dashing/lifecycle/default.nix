
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-lifecycle, ament-lint-common, lifecycle-msgs, ros-testing, std-msgs, ament-lint-auto, ros2run }:
buildRosPackage {
  pname = "ros-dashing-lifecycle";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/lifecycle/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "75279db9fd3aaf5e427b85f4c15ed780f069a23c792e426cb7728a151fbbe5e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs lifecycle-msgs rclcpp-lifecycle ];
  checkInputs = [ ros-testing ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ std-msgs lifecycle-msgs rclcpp-lifecycle ros2run ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing demos for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
