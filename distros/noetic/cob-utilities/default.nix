
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-utilities";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_utilities/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "54afd36df1e32578c35b7eb559c05622a2d126697540c499d242960783c9df6d";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Deprecated
    &quot;cob_utilities&quot; subsumes a number of classes, which are used in the original COb3 software. E.g. &quot;IniFile.h&quot; supports the original inifile structure of Care-O-bot 3. &quot;MathSup.h&quot; provides some basic functions like conversion from degree to radion or norming of angles within +/- PI. The package is currently used while the drivers are ported to ROS and Orocos respectively. Midterm it shall be removed and the ROS structures shall be used for reading parameters during initialization. So, don't use this package in new code!'';
    license = with lib.licenses; [ asl20 ];
  };
}
