
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, iiwa-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-ros";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_ros/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "0da94fb4366ddb8fcf9f7e3b8b3a4eeb1b3eb208cea6dd3abc0065be1a5fd0c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules iiwa-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iiwa_ros package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
