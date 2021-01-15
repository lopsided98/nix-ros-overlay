
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tdk-robokit";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/InvenSenseInc/tdk_robokit-release/archive/release/kinetic/tdk_robokit/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "b18a5375065df2fa93e24145d951f91c0f44340edc3ab3638b28a4a19dfc9918";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tdk_robokit package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
