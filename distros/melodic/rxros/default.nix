
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rxcpp-vendor }:
buildRosPackage {
  pname = "ros-melodic-rxros";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/rxros-release/archive/release/melodic/rxros/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ac6bf266d3f1bfbe7be43f5870ba29469fffb094fe4c4bdc8241a128187c6dde";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rxcpp-vendor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The RxROS package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
