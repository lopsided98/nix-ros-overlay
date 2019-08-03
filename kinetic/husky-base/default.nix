
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, husky-msgs, roslint, diff-drive-controller, sensor-msgs, catkin, topic-tools, diagnostic-updater, husky-description, diagnostic-msgs, roslaunch, roscpp, husky-control, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-husky-base";
  version = "0.3.4-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_base/0.3.4-1.tar.gz;
    sha256 = "456ded3c0c2ea7ed44105c12345ca8fd37a4a6e1071f2a456c0053a28701dde5";
  };

  buildInputs = [ controller-manager hardware-interface husky-msgs roslint sensor-msgs diagnostic-updater diagnostic-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ controller-manager hardware-interface husky-msgs diff-drive-controller sensor-msgs diagnostic-updater husky-description topic-tools diagnostic-msgs roscpp husky-control geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
