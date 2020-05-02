
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, diff-drive-controller, geometry-msgs, hardware-interface, husky-control, husky-description, husky-msgs, roscpp, roslaunch, roslint, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-husky-base";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_base/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "52b74b91570c6636e22b797e0c2b5d5cb8b810b0e5d75d4d0d5a928424fbf373";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ controller-manager diagnostic-aggregator diagnostic-msgs diagnostic-updater diff-drive-controller geometry-msgs hardware-interface husky-control husky-description husky-msgs roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
