
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-teraranger-array-converter";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/Terabee/teraranger_array_converter-release/archive/release/kinetic/teraranger_array_converter/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "2e0b096a60b5932333999952d0ba84b78e0c0aadd617fada3d3f486e387c490e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package that handle conversion from RangeArray messsages'';
    license = with lib.licenses; [ mit ];
  };
}
