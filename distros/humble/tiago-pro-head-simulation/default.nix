
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tiago-pro-head-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-simulation";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_head_simulation-release/archive/release/humble/tiago_pro_head_simulation/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "519dccb3e2e36c6c83b9683bdcf19f47746631ade8aa4efa0e2660ef600b59bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tiago-pro-head-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_head_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
