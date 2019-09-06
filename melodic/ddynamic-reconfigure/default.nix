
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, dynamic-reconfigure, roscpp, gmock }:
buildRosPackage {
  pname = "ros-melodic-ddynamic-reconfigure";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure/archive/release/melodic/ddynamic_reconfigure/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "194f34df00a51dd68668b927cac684ff36f863e931a2559c76f1e0ed92c6a957";
  };

  buildType = "catkin";
  buildInputs = [ roscpp dynamic-reconfigure ];
  checkInputs = [ rostest gmock ];
  propagatedBuildInputs = [ roscpp dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
