
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rwt-utils-3rdparty";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_utils_3rdparty/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "38912a925a225e217201765e4a2ab3bace0baf851c8cd5c281ac5437b68f0a44";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_utils_3rdparty package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
