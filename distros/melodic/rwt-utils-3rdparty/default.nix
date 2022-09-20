
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rwt-utils-3rdparty";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_utils_3rdparty/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3a6f48ed988311ffcab9a6bbdef0c4f5cc1be08e3c35470e2b3f57bc1076d870";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_utils_3rdparty package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
