
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, dynamic-reconfigure, std-msgs, std-srvs, catkin, rosunit, marti-common-msgs, roscpp, gtest, message-runtime, nav-msgs, rostest, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-swri-roscpp";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_roscpp/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "d48f49829b97cb317f23dcd90674be54ed8787c711073b0021627570dab68396";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure std-msgs std-srvs marti-common-msgs roscpp nav-msgs diagnostic-updater ];
  checkInputs = [ message-runtime rosunit gtest message-generation rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure std-msgs std-srvs marti-common-msgs roscpp nav-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
