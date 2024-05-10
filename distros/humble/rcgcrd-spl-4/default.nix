
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rcgcrd-spl-4";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/humble/rcgcrd_spl_4/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "bf61490491268ecb33eac298dc9ad0dcf07186fc10a36494aa3b16b6e5c42d13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup SPL GameController Return Data V4 ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
