
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, dynamic-reconfigure, gtest, marti-common-msgs, marti-introspection-msgs, message-generation, message-runtime, nav-msgs, pkg-config, roscpp, rostest, rosunit, std-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-swri-roscpp";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_roscpp/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "8249abbba7bcc983cc8cb7c527873080b7cd7c7e51499b30177c8dca65ca4da8";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ gtest message-generation message-runtime rostest rosunit ];
  propagatedBuildInputs = [ boost diagnostic-updater dynamic-reconfigure marti-common-msgs marti-introspection-msgs nav-msgs roscpp std-msgs std-srvs yaml-cpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
