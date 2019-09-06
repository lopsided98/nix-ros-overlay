
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, gtest, catkin, diagnostic-updater, rostest, nav-msgs, message-generation, marti-common-msgs, message-runtime, dynamic-reconfigure, std-msgs, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-swri-roscpp";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_roscpp/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "6e52a361f2a0d5a61c93f4aeab9624884e721353c227e6c70cfaeb3f201dfed9";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs diagnostic-updater nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  checkInputs = [ gtest rostest message-generation message-runtime rosunit ];
  propagatedBuildInputs = [ std-srvs diagnostic-updater nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
