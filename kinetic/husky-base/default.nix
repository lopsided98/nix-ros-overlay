
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-aggregator, husky-description, sensor-msgs, geometry-msgs, diagnostic-msgs, controller-manager, hardware-interface, catkin, roslint, husky-control, diff-drive-controller, roscpp, topic-tools, husky-msgs, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-husky-base";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_base/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "456ded3c0c2ea7ed44105c12345ca8fd37a4a6e1071f2a456c0053a28701dde5";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs controller-manager hardware-interface roslint roscpp husky-msgs roslaunch diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-aggregator husky-description sensor-msgs diagnostic-msgs geometry-msgs controller-manager hardware-interface husky-control diff-drive-controller roscpp topic-tools husky-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
