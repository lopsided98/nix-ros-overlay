
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-utilities";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_utilities/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "572d1c9ecc5e68f9e2d99eb125216559a3c72e42ebfabc493f1690fc2fb40cca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Deprecated
    &quot;cob_utilities&quot; subsumes a number of classes, which are used in the original COb3 software. E.g. &quot;IniFile.h&quot; supports the original inifile structure of Care-O-bot 3. &quot;MathSup.h&quot; provides some basic functions like conversion from degree to radion or norming of angles within +/- PI. The package is currently used while the drivers are ported to ROS and Orocos respectively. Midterm it shall be removed and the ROS structures shall be used for reading parameters during initialization. So, don't use this package in new code!";
    license = with lib.licenses; [ asl20 ];
  };
}
