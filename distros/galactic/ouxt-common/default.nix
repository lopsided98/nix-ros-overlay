
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-galactic-ouxt-common";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/ouxt_common-release/archive/release/galactic/ouxt_common/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "3945df85b191ec8fe57e665bd72be5a59b30943391e6a62106533ba21e22b99b";
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
