
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-ouxt-common";
  version = "0.0.8-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/jazzy/ouxt_common/0.0.8-5.tar.gz";
    name = "0.0.8-5.tar.gz";
    sha256 = "9208d61e036cfebdb9e263215ccaebf0415062190e34aaea02d9269a5765151e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "common settings for OUXT Polaris ROS2 packages";
    license = with lib.licenses; [ asl20 ];
  };
}
