
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-hey5-description";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5_description/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "fa2d62d9c9387b669f69b1c7bd413ed3573dd376b647ebaa025cead2881d1fe6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
    etc.) of the Hey5 hand.  The files in this package are parsed and used by
    a variety of other components.  Most users will not interact directly
    with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
