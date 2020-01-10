
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, gtest, marti-common-msgs, message-generation, message-runtime, nav-msgs, roscpp, rostest, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-swri-roscpp";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_roscpp/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "57a05c25c6785fda4a68d7fb2be35f1a92d309893872239be4fddd54a6a97829";
  };

  buildType = "catkin";
  checkInputs = [ gtest message-generation message-runtime rostest rosunit ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure marti-common-msgs nav-msgs roscpp std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
