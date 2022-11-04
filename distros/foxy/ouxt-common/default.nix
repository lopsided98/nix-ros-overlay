
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-foxy-ouxt-common";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/ouxt_common-release/archive/release/foxy/ouxt_common/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "6ffbece2115efefd24b253933d36fc292319ab1ed18821a9ca25fa5437d5e8cc";
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
