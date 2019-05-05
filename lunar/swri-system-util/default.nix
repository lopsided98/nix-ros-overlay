
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-swri-system-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_system_util/2.8.0-0.tar.gz;
    sha256 = "06349d7ae3214880239a185c56f03b5433184d99a388ac9f45ffe7b14be268f6";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
