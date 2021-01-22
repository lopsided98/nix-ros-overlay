
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-object-tracker, hector-worldmodel-geotiff-plugins, hector-worldmodel-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hector-worldmodel";
  version = "0.3.4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_worldmodel-release/archive/release/kinetic/hector_worldmodel/0.3.4-0.tar.gz";
    name = "0.3.4-0.tar.gz";
    sha256 = "0f6cd02aa2e36dd6b65a95f7c4f1967953968ca085f31385c6dceebae2d42717";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-object-tracker hector-worldmodel-geotiff-plugins hector-worldmodel-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hector_worldmodel stack helps to collect and fuse information about objects in the world.
    It is used by Team Hector Darmstadt to localize victims and QR codes in the Robocup Rescue
    scenario. See <a href="http://wiki.ros.org/hector_object_tracker">hector_object_tracker</a> for further details.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
