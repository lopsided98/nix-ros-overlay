
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, geometry-msgs, joy-linux, joy-teleop, launch-pal, pmb2-controller-configuration, pmb2-description, robot-state-publisher, twist-mux, twist-mux-msgs }:
buildRosPackage {
  pname = "ros-humble-pmb2-bringup";
  version = "5.10.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_bringup/5.10.2-1.tar.gz";
    name = "5.10.2-1.tar.gz";
    sha256 = "3415b99b50c6be3b81cba0235ceece2f915fd8bdd3944f921d03ac3ae8c3b3d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator geometry-msgs joy-linux joy-teleop launch-pal pmb2-controller-configuration pmb2-description robot-state-publisher twist-mux twist-mux-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
