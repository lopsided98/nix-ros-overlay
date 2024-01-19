
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-humble-ouxt-common";
  version = "0.0.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/humble/ouxt_common/0.0.8-3.tar.gz";
    name = "0.0.8-3.tar.gz";
    sha256 = "497c4f174b05f677ff1b7b9ea355e8855942666c1b6beafe31bae7a814284d22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''common settings for OUXT Polaris ROS2 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
