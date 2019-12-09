
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, pointgrey-camera-description, catkin, velodyne-description, roslaunch, lms1xx }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-description";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/grizzly-release/archive/release/kinetic/grizzly_description/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "333f01cbac8bbd0539dac63b047cec74cf078b4ca1c2a3c1fe2c8ed610b6b698";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro urdf pointgrey-camera-description velodyne-description lms1xx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Grizzly URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
