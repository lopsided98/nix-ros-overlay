
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libphidgets, message-generation, sensor-msgs, std-msgs, catkin, rospy, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-phidgets";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_phidgets/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "dc52a38762996d8dc6610d5438fa09969b3eda2652ca04898589cf3d4ef124b5";
  };

  buildType = "catkin";
  buildInputs = [ libphidgets sensor-msgs std-msgs roscpp message-generation ];
  propagatedBuildInputs = [ libphidgets sensor-msgs std-msgs rospy roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_phidgets'';
    license = with lib.licenses; [ asl20 ];
  };
}
