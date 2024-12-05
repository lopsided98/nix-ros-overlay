
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-humble-costmap-queue";
  version = "1.1.17-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/costmap_queue/1.1.17-1.tar.gz";
    name = "1.1.17-1.tar.gz";
    sha256 = "c52460828437cba3a3cbfbc545bf6ff34edbddf05c82b460c2ed4c52bafb1e94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-costmap-2d rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The costmap_queue package";
    license = with lib.licenses; [ bsd3 ];
  };
}
