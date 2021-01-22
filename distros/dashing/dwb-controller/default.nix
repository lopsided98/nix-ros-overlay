
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, dwb-core, launch, launch-testing, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-dwb-controller";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_controller/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "89270b7d666e5709909ede49a3985ba9c8dcfdab9f6eadd7518d8e267fee3b0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ dwb-core nav-2d-msgs nav-2d-utils nav2-msgs nav2-util rclcpp rclcpp-action std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
