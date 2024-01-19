
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ridgeback-msgs, ridgeback-viz }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-desktop";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/noetic/ridgeback_desktop/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "e5f1f4ff1bfcbda124424ea9710105417260835334d7a5722aa97ac7c5611d9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ridgeback-msgs ridgeback-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Ridgeback from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
