
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, gtest, catkin, diagnostic-updater, rostest, nav-msgs, marti-common-msgs, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-swri-roscpp";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_roscpp/2.8.0-0.tar.gz;
    sha256 = "f6172284a3e4f8db0640122a5431964141bfe06992ebc53b037e0b5bedf6f775";
  };

  buildInputs = [ std-srvs diagnostic-updater nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  checkInputs = [ rostest gtest ];
  propagatedBuildInputs = [ std-srvs diagnostic-updater nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
