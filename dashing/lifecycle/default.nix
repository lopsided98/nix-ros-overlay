
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2run, rclcpp-lifecycle, ros-testing, std-msgs, ament-lint-common, ament-cmake, lifecycle-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-lifecycle";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/lifecycle/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "75279db9fd3aaf5e427b85f4c15ed780f069a23c792e426cb7728a151fbbe5e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp-lifecycle lifecycle-msgs ];
  checkInputs = [ ament-lint-common ros-testing ament-lint-auto ];
  propagatedBuildInputs = [ ros2run rclcpp-lifecycle std-msgs lifecycle-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing demos for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
