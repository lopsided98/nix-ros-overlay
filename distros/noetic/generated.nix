
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 abb-driver = self.callPackage ./abb-driver {};

 abb-egm-msgs = self.callPackage ./abb-egm-msgs {};

 abb-rapid-msgs = self.callPackage ./abb-rapid-msgs {};

 abb-rapid-sm-addin-msgs = self.callPackage ./abb-rapid-sm-addin-msgs {};

 abb-robot-msgs = self.callPackage ./abb-robot-msgs {};

 ackermann-msgs = self.callPackage ./ackermann-msgs {};

 ackermann-steering-controller = self.callPackage ./ackermann-steering-controller {};

 actionlib = self.callPackage ./actionlib {};

 actionlib-lisp = self.callPackage ./actionlib-lisp {};

 actionlib-msgs = self.callPackage ./actionlib-msgs {};

 actionlib-tools = self.callPackage ./actionlib-tools {};

 actionlib-tutorials = self.callPackage ./actionlib-tutorials {};

 agni-tf-tools = self.callPackage ./agni-tf-tools {};

 allocators = self.callPackage ./allocators {};

 amcl = self.callPackage ./amcl {};

 angles = self.callPackage ./angles {};

 apriltag = self.callPackage ./apriltag {};

 apriltag-ros = self.callPackage ./apriltag-ros {};

 aques-talk = self.callPackage ./aques-talk {};

 arbotix = self.callPackage ./arbotix {};

 arbotix-controllers = self.callPackage ./arbotix-controllers {};

 arbotix-firmware = self.callPackage ./arbotix-firmware {};

 arbotix-msgs = self.callPackage ./arbotix-msgs {};

 arbotix-python = self.callPackage ./arbotix-python {};

 arbotix-sensors = self.callPackage ./arbotix-sensors {};

 aruco = self.callPackage ./aruco {};

 aruco-detect = self.callPackage ./aruco-detect {};

 aruco-msgs = self.callPackage ./aruco-msgs {};

 aruco-opencv = self.callPackage ./aruco-opencv {};

 aruco-opencv-msgs = self.callPackage ./aruco-opencv-msgs {};

 aruco-ros = self.callPackage ./aruco-ros {};

 assimp-devel = self.callPackage ./assimp-devel {};

 assisted-teleop = self.callPackage ./assisted-teleop {};

 async-comm = self.callPackage ./async-comm {};

 async-web-server-cpp = self.callPackage ./async-web-server-cpp {};

 audibot = self.callPackage ./audibot {};

 audibot-description = self.callPackage ./audibot-description {};

 audibot-gazebo = self.callPackage ./audibot-gazebo {};

 audio-capture = self.callPackage ./audio-capture {};

 audio-common = self.callPackage ./audio-common {};

 audio-common-msgs = self.callPackage ./audio-common-msgs {};

 audio-play = self.callPackage ./audio-play {};

 audio-to-spectrogram = self.callPackage ./audio-to-spectrogram {};

 audio-video-recorder = self.callPackage ./audio-video-recorder {};

 automotive-autonomy-msgs = self.callPackage ./automotive-autonomy-msgs {};

 automotive-navigation-msgs = self.callPackage ./automotive-navigation-msgs {};

 automotive-platform-msgs = self.callPackage ./automotive-platform-msgs {};

 autoware-can-msgs = self.callPackage ./autoware-can-msgs {};

 autoware-config-msgs = self.callPackage ./autoware-config-msgs {};

 autoware-external-msgs = self.callPackage ./autoware-external-msgs {};

 autoware-lanelet2-msgs = self.callPackage ./autoware-lanelet2-msgs {};

 autoware-map-msgs = self.callPackage ./autoware-map-msgs {};

 autoware-msgs = self.callPackage ./autoware-msgs {};

 autoware-system-msgs = self.callPackage ./autoware-system-msgs {};

 auv-msgs = self.callPackage ./auv-msgs {};

 avt-vimba-camera = self.callPackage ./avt-vimba-camera {};

 azure-iot-sdk-c = self.callPackage ./azure-iot-sdk-c {};

 backward-ros = self.callPackage ./backward-ros {};

 bagger = self.callPackage ./bagger {};

 baldor = self.callPackage ./baldor {};

 base-local-planner = self.callPackage ./base-local-planner {};

 bayesian-belief-networks = self.callPackage ./bayesian-belief-networks {};

 behaviortree-cpp = self.callPackage ./behaviortree-cpp {};

 behaviortree-cpp-v3 = self.callPackage ./behaviortree-cpp-v3 {};

 bond = self.callPackage ./bond {};

 bond-core = self.callPackage ./bond-core {};

 bondcpp = self.callPackage ./bondcpp {};

 bondpy = self.callPackage ./bondpy {};

 boost-plugin-loader = self.callPackage ./boost-plugin-loader {};

 boost-sml = self.callPackage ./boost-sml {};

 bosch-locator-bridge = self.callPackage ./bosch-locator-bridge {};

 bota-driver = self.callPackage ./bota-driver {};

 bota-driver-testing = self.callPackage ./bota-driver-testing {};

 bota-node = self.callPackage ./bota-node {};

 bota-signal-handler = self.callPackage ./bota-signal-handler {};

 bota-worker = self.callPackage ./bota-worker {};

 calibration = self.callPackage ./calibration {};

 calibration-estimation = self.callPackage ./calibration-estimation {};

 calibration-launch = self.callPackage ./calibration-launch {};

 calibration-msgs = self.callPackage ./calibration-msgs {};

 calibration-setup-helper = self.callPackage ./calibration-setup-helper {};

 camera-aravis = self.callPackage ./camera-aravis {};

 camera-calibration = self.callPackage ./camera-calibration {};

 camera-calibration-parsers = self.callPackage ./camera-calibration-parsers {};

 camera-info-manager = self.callPackage ./camera-info-manager {};

 can-dbc-parser = self.callPackage ./can-dbc-parser {};

 can-msgs = self.callPackage ./can-msgs {};

 canopen-402 = self.callPackage ./canopen-402 {};

 canopen-chain-node = self.callPackage ./canopen-chain-node {};

 canopen-master = self.callPackage ./canopen-master {};

 canopen-motor-node = self.callPackage ./canopen-motor-node {};

 capabilities = self.callPackage ./capabilities {};

 care-o-bot = self.callPackage ./care-o-bot {};

 care-o-bot-robot = self.callPackage ./care-o-bot-robot {};

 care-o-bot-simulation = self.callPackage ./care-o-bot-simulation {};

 carla-msgs = self.callPackage ./carla-msgs {};

 carrot-planner = self.callPackage ./carrot-planner {};

 cartesian-control-msgs = self.callPackage ./cartesian-control-msgs {};

 cartesian-interface = self.callPackage ./cartesian-interface {};

 cartesian-msgs = self.callPackage ./cartesian-msgs {};

 cartesian-trajectory-controller = self.callPackage ./cartesian-trajectory-controller {};

 cartesian-trajectory-interpolation = self.callPackage ./cartesian-trajectory-interpolation {};

 catch-ros = self.callPackage ./catch-ros {};

 catkin = self.callPackage ./catkin {};

 catkin-virtualenv = self.callPackage ./catkin-virtualenv {};

 chaplus-ros = self.callPackage ./chaplus-ros {};

 checkerboard-detector = self.callPackage ./checkerboard-detector {};

 chomp-motion-planner = self.callPackage ./chomp-motion-planner {};

 cl-tf = self.callPackage ./cl-tf {};

 cl-tf2 = self.callPackage ./cl-tf2 {};

 cl-transforms = self.callPackage ./cl-transforms {};

 cl-transforms-stamped = self.callPackage ./cl-transforms-stamped {};

 cl-urdf = self.callPackage ./cl-urdf {};

 cl-utils = self.callPackage ./cl-utils {};

 class-loader = self.callPackage ./class-loader {};

 clear-costmap-recovery = self.callPackage ./clear-costmap-recovery {};

 clearpath-configuration-msgs = self.callPackage ./clearpath-configuration-msgs {};

 clearpath-control-msgs = self.callPackage ./clearpath-control-msgs {};

 clearpath-dock-msgs = self.callPackage ./clearpath-dock-msgs {};

 clearpath-localization-msgs = self.callPackage ./clearpath-localization-msgs {};

 clearpath-mission-manager-msgs = self.callPackage ./clearpath-mission-manager-msgs {};

 clearpath-mission-scheduler-msgs = self.callPackage ./clearpath-mission-scheduler-msgs {};

 clearpath-msgs = self.callPackage ./clearpath-msgs {};

 clearpath-navigation-msgs = self.callPackage ./clearpath-navigation-msgs {};

 clearpath-onav-api-examples = self.callPackage ./clearpath-onav-api-examples {};

 clearpath-onav-api-examples-lib = self.callPackage ./clearpath-onav-api-examples-lib {};

 clearpath-onav-examples = self.callPackage ./clearpath-onav-examples {};

 clearpath-platform-msgs = self.callPackage ./clearpath-platform-msgs {};

 clearpath-safety-msgs = self.callPackage ./clearpath-safety-msgs {};

 clober-msgs = self.callPackage ./clober-msgs {};

 clpe = self.callPackage ./clpe {};

 cmake-modules = self.callPackage ./cmake-modules {};

 cmd-vel-smoother = self.callPackage ./cmd-vel-smoother {};

 cmvision = self.callPackage ./cmvision {};

 cnpy = self.callPackage ./cnpy {};

 cob-3d-mapping-msgs = self.callPackage ./cob-3d-mapping-msgs {};

 cob-actions = self.callPackage ./cob-actions {};

 cob-android = self.callPackage ./cob-android {};

 cob-android-msgs = self.callPackage ./cob-android-msgs {};

 cob-android-resource-server = self.callPackage ./cob-android-resource-server {};

 cob-android-script-server = self.callPackage ./cob-android-script-server {};

 cob-android-settings = self.callPackage ./cob-android-settings {};

 cob-base-controller-utils = self.callPackage ./cob-base-controller-utils {};

 cob-base-drive-chain = self.callPackage ./cob-base-drive-chain {};

 cob-base-velocity-smoother = self.callPackage ./cob-base-velocity-smoother {};

 cob-bms-driver = self.callPackage ./cob-bms-driver {};

 cob-bringup = self.callPackage ./cob-bringup {};

 cob-bringup-sim = self.callPackage ./cob-bringup-sim {};

 cob-calibration-data = self.callPackage ./cob-calibration-data {};

 cob-cam3d-throttle = self.callPackage ./cob-cam3d-throttle {};

 cob-canopen-motor = self.callPackage ./cob-canopen-motor {};

 cob-cartesian-controller = self.callPackage ./cob-cartesian-controller {};

 cob-collision-monitor = self.callPackage ./cob-collision-monitor {};

 cob-collision-velocity-filter = self.callPackage ./cob-collision-velocity-filter {};

 cob-command-gui = self.callPackage ./cob-command-gui {};

 cob-command-tools = self.callPackage ./cob-command-tools {};

 cob-common = self.callPackage ./cob-common {};

 cob-control = self.callPackage ./cob-control {};

 cob-control-mode-adapter = self.callPackage ./cob-control-mode-adapter {};

 cob-control-msgs = self.callPackage ./cob-control-msgs {};

 cob-dashboard = self.callPackage ./cob-dashboard {};

 cob-default-env-config = self.callPackage ./cob-default-env-config {};

 cob-default-robot-behavior = self.callPackage ./cob-default-robot-behavior {};

 cob-default-robot-config = self.callPackage ./cob-default-robot-config {};

 cob-description = self.callPackage ./cob-description {};

 cob-docker-control = self.callPackage ./cob-docker-control {};

 cob-driver = self.callPackage ./cob-driver {};

 cob-elmo-homing = self.callPackage ./cob-elmo-homing {};

 cob-environments = self.callPackage ./cob-environments {};

 cob-extern = self.callPackage ./cob-extern {};

 cob-footprint-observer = self.callPackage ./cob-footprint-observer {};

 cob-frame-tracker = self.callPackage ./cob-frame-tracker {};

 cob-gazebo = self.callPackage ./cob-gazebo {};

 cob-gazebo-objects = self.callPackage ./cob-gazebo-objects {};

 cob-gazebo-plugins = self.callPackage ./cob-gazebo-plugins {};

 cob-gazebo-ros-control = self.callPackage ./cob-gazebo-ros-control {};

 cob-gazebo-tools = self.callPackage ./cob-gazebo-tools {};

 cob-gazebo-worlds = self.callPackage ./cob-gazebo-worlds {};

 cob-generic-can = self.callPackage ./cob-generic-can {};

 cob-grasp-generation = self.callPackage ./cob-grasp-generation {};

 cob-hand = self.callPackage ./cob-hand {};

 cob-hand-bridge = self.callPackage ./cob-hand-bridge {};

 cob-hardware-config = self.callPackage ./cob-hardware-config {};

 cob-hardware-emulation = self.callPackage ./cob-hardware-emulation {};

 cob-helper-tools = self.callPackage ./cob-helper-tools {};

 cob-image-flip = self.callPackage ./cob-image-flip {};

 cob-interactive-teleop = self.callPackage ./cob-interactive-teleop {};

 cob-light = self.callPackage ./cob-light {};

 cob-linear-nav = self.callPackage ./cob-linear-nav {};

 cob-lookat-action = self.callPackage ./cob-lookat-action {};

 cob-manipulation = self.callPackage ./cob-manipulation {};

 cob-manipulation-msgs = self.callPackage ./cob-manipulation-msgs {};

 cob-map-accessibility-analysis = self.callPackage ./cob-map-accessibility-analysis {};

 cob-mapping-slam = self.callPackage ./cob-mapping-slam {};

 cob-mecanum-controller = self.callPackage ./cob-mecanum-controller {};

 cob-mimic = self.callPackage ./cob-mimic {};

 cob-model-identifier = self.callPackage ./cob-model-identifier {};

 cob-monitoring = self.callPackage ./cob-monitoring {};

 cob-moveit-bringup = self.callPackage ./cob-moveit-bringup {};

 cob-moveit-config = self.callPackage ./cob-moveit-config {};

 cob-moveit-interface = self.callPackage ./cob-moveit-interface {};

 cob-msgs = self.callPackage ./cob-msgs {};

 cob-navigation = self.callPackage ./cob-navigation {};

 cob-navigation-config = self.callPackage ./cob-navigation-config {};

 cob-navigation-global = self.callPackage ./cob-navigation-global {};

 cob-navigation-local = self.callPackage ./cob-navigation-local {};

 cob-navigation-slam = self.callPackage ./cob-navigation-slam {};

 cob-object-detection-msgs = self.callPackage ./cob-object-detection-msgs {};

 cob-object-detection-visualizer = self.callPackage ./cob-object-detection-visualizer {};

 cob-obstacle-distance = self.callPackage ./cob-obstacle-distance {};

 cob-omni-drive-controller = self.callPackage ./cob-omni-drive-controller {};

 cob-perception-common = self.callPackage ./cob-perception-common {};

 cob-perception-msgs = self.callPackage ./cob-perception-msgs {};

 cob-phidget-em-state = self.callPackage ./cob-phidget-em-state {};

 cob-phidget-power-state = self.callPackage ./cob-phidget-power-state {};

 cob-phidgets = self.callPackage ./cob-phidgets {};

 cob-reflector-referencing = self.callPackage ./cob-reflector-referencing {};

 cob-relayboard = self.callPackage ./cob-relayboard {};

 cob-robots = self.callPackage ./cob-robots {};

 cob-safety-controller = self.callPackage ./cob-safety-controller {};

 cob-scan-unifier = self.callPackage ./cob-scan-unifier {};

 cob-script-server = self.callPackage ./cob-script-server {};

 cob-sick-lms1xx = self.callPackage ./cob-sick-lms1xx {};

 cob-sick-s300 = self.callPackage ./cob-sick-s300 {};

 cob-simulation = self.callPackage ./cob-simulation {};

 cob-sound = self.callPackage ./cob-sound {};

 cob-srvs = self.callPackage ./cob-srvs {};

 cob-substitute = self.callPackage ./cob-substitute {};

 cob-supported-robots = self.callPackage ./cob-supported-robots {};

 cob-teleop = self.callPackage ./cob-teleop {};

 cob-trajectory-controller = self.callPackage ./cob-trajectory-controller {};

 cob-tricycle-controller = self.callPackage ./cob-tricycle-controller {};

 cob-twist-controller = self.callPackage ./cob-twist-controller {};

 cob-undercarriage-ctrl = self.callPackage ./cob-undercarriage-ctrl {};

 cob-utilities = self.callPackage ./cob-utilities {};

 cob-vision-utils = self.callPackage ./cob-vision-utils {};

 cob-voltage-control = self.callPackage ./cob-voltage-control {};

 code-coverage = self.callPackage ./code-coverage {};

 codec-image-transport = self.callPackage ./codec-image-transport {};

 collada-parser = self.callPackage ./collada-parser {};

 collada-urdf = self.callPackage ./collada-urdf {};

 color-util = self.callPackage ./color-util {};

 combined-robot-hw = self.callPackage ./combined-robot-hw {};

 combined-robot-hw-tests = self.callPackage ./combined-robot-hw-tests {};

 common-msgs = self.callPackage ./common-msgs {};

 common-tutorials = self.callPackage ./common-tutorials {};

 compass-msgs = self.callPackage ./compass-msgs {};

 compressed-depth-image-transport = self.callPackage ./compressed-depth-image-transport {};

 compressed-image-transport = self.callPackage ./compressed-image-transport {};

 computer-status-msgs = self.callPackage ./computer-status-msgs {};

 contact-states-observer = self.callPackage ./contact-states-observer {};

 control-box-rst = self.callPackage ./control-box-rst {};

 control-msgs = self.callPackage ./control-msgs {};

 control-toolbox = self.callPackage ./control-toolbox {};

 controller-interface = self.callPackage ./controller-interface {};

 controller-manager = self.callPackage ./controller-manager {};

 controller-manager-msgs = self.callPackage ./controller-manager-msgs {};

 controller-manager-tests = self.callPackage ./controller-manager-tests {};

 convex-decomposition = self.callPackage ./convex-decomposition {};

 costmap-2d = self.callPackage ./costmap-2d {};

 costmap-converter = self.callPackage ./costmap-converter {};

 costmap-cspace = self.callPackage ./costmap-cspace {};

 costmap-cspace-msgs = self.callPackage ./costmap-cspace-msgs {};

 costmap-cspace-rviz-plugins = self.callPackage ./costmap-cspace-rviz-plugins {};

 costmap-queue = self.callPackage ./costmap-queue {};

 cpp-common = self.callPackage ./cpp-common {};

 cpr-onav-description = self.callPackage ./cpr-onav-description {};

 cras-imu-tools = self.callPackage ./cras-imu-tools {};

 cras-laser-geometry = self.callPackage ./cras-laser-geometry {};

 create-bringup = self.callPackage ./create-bringup {};

 create-description = self.callPackage ./create-description {};

 create-driver = self.callPackage ./create-driver {};

 create-msgs = self.callPackage ./create-msgs {};

 create-robot = self.callPackage ./create-robot {};

 criutils = self.callPackage ./criutils {};

 csm = self.callPackage ./csm {};

 cv-bridge = self.callPackage ./cv-bridge {};

 cv-camera = self.callPackage ./cv-camera {};

 cvp-mesh-planner = self.callPackage ./cvp-mesh-planner {};

 darknet-ros-msgs = self.callPackage ./darknet-ros-msgs {};

 dataspeed-can = self.callPackage ./dataspeed-can {};

 dataspeed-can-msg-filters = self.callPackage ./dataspeed-can-msg-filters {};

 dataspeed-can-tools = self.callPackage ./dataspeed-can-tools {};

 dataspeed-can-usb = self.callPackage ./dataspeed-can-usb {};

 dataspeed-pds = self.callPackage ./dataspeed-pds {};

 dataspeed-pds-can = self.callPackage ./dataspeed-pds-can {};

 dataspeed-pds-msgs = self.callPackage ./dataspeed-pds-msgs {};

 dataspeed-pds-rqt = self.callPackage ./dataspeed-pds-rqt {};

 dataspeed-pds-scripts = self.callPackage ./dataspeed-pds-scripts {};

 dataspeed-ulc = self.callPackage ./dataspeed-ulc {};

 dataspeed-ulc-can = self.callPackage ./dataspeed-ulc-can {};

 dataspeed-ulc-msgs = self.callPackage ./dataspeed-ulc-msgs {};

 dbw-fca = self.callPackage ./dbw-fca {};

 dbw-fca-can = self.callPackage ./dbw-fca-can {};

 dbw-fca-description = self.callPackage ./dbw-fca-description {};

 dbw-fca-joystick-demo = self.callPackage ./dbw-fca-joystick-demo {};

 dbw-fca-msgs = self.callPackage ./dbw-fca-msgs {};

 dbw-mkz = self.callPackage ./dbw-mkz {};

 dbw-mkz-can = self.callPackage ./dbw-mkz-can {};

 dbw-mkz-description = self.callPackage ./dbw-mkz-description {};

 dbw-mkz-joystick-demo = self.callPackage ./dbw-mkz-joystick-demo {};

 dbw-mkz-msgs = self.callPackage ./dbw-mkz-msgs {};

 dbw-polaris = self.callPackage ./dbw-polaris {};

 dbw-polaris-can = self.callPackage ./dbw-polaris-can {};

 dbw-polaris-description = self.callPackage ./dbw-polaris-description {};

 dbw-polaris-joystick-demo = self.callPackage ./dbw-polaris-joystick-demo {};

 dbw-polaris-msgs = self.callPackage ./dbw-polaris-msgs {};

 ddynamic-reconfigure = self.callPackage ./ddynamic-reconfigure {};

 ddynamic-reconfigure-python = self.callPackage ./ddynamic-reconfigure-python {};

 delphi-esr-msgs = self.callPackage ./delphi-esr-msgs {};

 delphi-mrr-msgs = self.callPackage ./delphi-mrr-msgs {};

 delphi-srr-msgs = self.callPackage ./delphi-srr-msgs {};

 depth-image-proc = self.callPackage ./depth-image-proc {};

 depthai = self.callPackage ./depthai {};

 depthai-ros = self.callPackage ./depthai-ros {};

 depthai-bridge = self.callPackage ./depthai-bridge {};

 depthai-descriptions = self.callPackage ./depthai-descriptions {};

 depthai-examples = self.callPackage ./depthai-examples {};

 depthai-filters = self.callPackage ./depthai-filters {};

 depthai-ros-driver = self.callPackage ./depthai-ros-driver {};

 depthai-ros-msgs = self.callPackage ./depthai-ros-msgs {};

 depthimage-to-laserscan = self.callPackage ./depthimage-to-laserscan {};

 derived-object-msgs = self.callPackage ./derived-object-msgs {};

 desktop = self.callPackage ./desktop {};

 desktop-full = self.callPackage ./desktop-full {};

 diagnostic-aggregator = self.callPackage ./diagnostic-aggregator {};

 diagnostic-analysis = self.callPackage ./diagnostic-analysis {};

 diagnostic-common-diagnostics = self.callPackage ./diagnostic-common-diagnostics {};

 diagnostic-msgs = self.callPackage ./diagnostic-msgs {};

 diagnostic-updater = self.callPackage ./diagnostic-updater {};

 diagnostics = self.callPackage ./diagnostics {};

 dialogflow-task-executive = self.callPackage ./dialogflow-task-executive {};

 diff-drive-controller = self.callPackage ./diff-drive-controller {};

 diffbot-bringup = self.callPackage ./diffbot-bringup {};

 diffbot-control = self.callPackage ./diffbot-control {};

 diffbot-description = self.callPackage ./diffbot-description {};

 diffbot-gazebo = self.callPackage ./diffbot-gazebo {};

 diffbot-mbf = self.callPackage ./diffbot-mbf {};

 diffbot-msgs = self.callPackage ./diffbot-msgs {};

 diffbot-navigation = self.callPackage ./diffbot-navigation {};

 diffbot-slam = self.callPackage ./diffbot-slam {};

 dijkstra-mesh-planner = self.callPackage ./dijkstra-mesh-planner {};

 dingo-control = self.callPackage ./dingo-control {};

 dingo-description = self.callPackage ./dingo-description {};

 dingo-desktop = self.callPackage ./dingo-desktop {};

 dingo-gazebo = self.callPackage ./dingo-gazebo {};

 dingo-msgs = self.callPackage ./dingo-msgs {};

 dingo-navigation = self.callPackage ./dingo-navigation {};

 dingo-simulator = self.callPackage ./dingo-simulator {};

 dingo-viz = self.callPackage ./dingo-viz {};

 dlux-global-planner = self.callPackage ./dlux-global-planner {};

 dlux-plugins = self.callPackage ./dlux-plugins {};

 dnn-detect = self.callPackage ./dnn-detect {};

 downward = self.callPackage ./downward {};

 draco = self.callPackage ./draco {};

 driver-base = self.callPackage ./driver-base {};

 driver-common = self.callPackage ./driver-common {};

 drone-assets = self.callPackage ./drone-assets {};

 drone-circuit-assets = self.callPackage ./drone-circuit-assets {};

 drone-wrapper = self.callPackage ./drone-wrapper {};

 dual-quaternions = self.callPackage ./dual-quaternions {};

 dual-quaternions-ros = self.callPackage ./dual-quaternions-ros {};

 dwa-local-planner = self.callPackage ./dwa-local-planner {};

 dwb-critics = self.callPackage ./dwb-critics {};

 dwb-local-planner = self.callPackage ./dwb-local-planner {};

 dwb-msgs = self.callPackage ./dwb-msgs {};

 dwb-plugins = self.callPackage ./dwb-plugins {};

 dynamic-graph = self.callPackage ./dynamic-graph {};

 dynamic-graph-python = self.callPackage ./dynamic-graph-python {};

 dynamic-graph-tutorial = self.callPackage ./dynamic-graph-tutorial {};

 dynamic-edt-3d = self.callPackage ./dynamic-edt-3d {};

 dynamic-reconfigure = self.callPackage ./dynamic-reconfigure {};

 dynamic-robot-state-publisher = self.callPackage ./dynamic-robot-state-publisher {};

 dynamic-tf-publisher = self.callPackage ./dynamic-tf-publisher {};

 dynamixel-sdk = self.callPackage ./dynamixel-sdk {};

 dynamixel-sdk-examples = self.callPackage ./dynamixel-sdk-examples {};

 dynamixel-workbench = self.callPackage ./dynamixel-workbench {};

 dynamixel-workbench-controllers = self.callPackage ./dynamixel-workbench-controllers {};

 dynamixel-workbench-msgs = self.callPackage ./dynamixel-workbench-msgs {};

 dynamixel-workbench-operators = self.callPackage ./dynamixel-workbench-operators {};

 dynamixel-workbench-toolbox = self.callPackage ./dynamixel-workbench-toolbox {};

 easy-markers = self.callPackage ./easy-markers {};

 ecl-build = self.callPackage ./ecl-build {};

 ecl-command-line = self.callPackage ./ecl-command-line {};

 ecl-concepts = self.callPackage ./ecl-concepts {};

 ecl-config = self.callPackage ./ecl-config {};

 ecl-console = self.callPackage ./ecl-console {};

 ecl-containers = self.callPackage ./ecl-containers {};

 ecl-converters = self.callPackage ./ecl-converters {};

 ecl-converters-lite = self.callPackage ./ecl-converters-lite {};

 ecl-core = self.callPackage ./ecl-core {};

 ecl-core-apps = self.callPackage ./ecl-core-apps {};

 ecl-devices = self.callPackage ./ecl-devices {};

 ecl-eigen = self.callPackage ./ecl-eigen {};

 ecl-errors = self.callPackage ./ecl-errors {};

 ecl-exceptions = self.callPackage ./ecl-exceptions {};

 ecl-filesystem = self.callPackage ./ecl-filesystem {};

 ecl-formatters = self.callPackage ./ecl-formatters {};

 ecl-geometry = self.callPackage ./ecl-geometry {};

 ecl-io = self.callPackage ./ecl-io {};

 ecl-ipc = self.callPackage ./ecl-ipc {};

 ecl-license = self.callPackage ./ecl-license {};

 ecl-linear-algebra = self.callPackage ./ecl-linear-algebra {};

 ecl-lite = self.callPackage ./ecl-lite {};

 ecl-math = self.callPackage ./ecl-math {};

 ecl-mobile-robot = self.callPackage ./ecl-mobile-robot {};

 ecl-mpl = self.callPackage ./ecl-mpl {};

 ecl-navigation = self.callPackage ./ecl-navigation {};

 ecl-sigslots = self.callPackage ./ecl-sigslots {};

 ecl-sigslots-lite = self.callPackage ./ecl-sigslots-lite {};

 ecl-statistics = self.callPackage ./ecl-statistics {};

 ecl-streams = self.callPackage ./ecl-streams {};

 ecl-threads = self.callPackage ./ecl-threads {};

 ecl-time = self.callPackage ./ecl-time {};

 ecl-time-lite = self.callPackage ./ecl-time-lite {};

 ecl-tools = self.callPackage ./ecl-tools {};

 ecl-type-traits = self.callPackage ./ecl-type-traits {};

 ecl-utilities = self.callPackage ./ecl-utilities {};

 effort-controllers = self.callPackage ./effort-controllers {};

 eigen-conversions = self.callPackage ./eigen-conversions {};

 eigen-stl-containers = self.callPackage ./eigen-stl-containers {};

 eigenpy = self.callPackage ./eigenpy {};

 eiquadprog = self.callPackage ./eiquadprog {};

 eml = self.callPackage ./eml {};

 end-effector = self.callPackage ./end-effector {};

 er-public-msgs = self.callPackage ./er-public-msgs {};

 ergodic-exploration = self.callPackage ./ergodic-exploration {};

 ess-imu-ros1-uart-driver = self.callPackage ./ess-imu-ros1-uart-driver {};

 ethercat-grant = self.callPackage ./ethercat-grant {};

 ethercat-hardware = self.callPackage ./ethercat-hardware {};

 ethercat-trigger-controllers = self.callPackage ./ethercat-trigger-controllers {};

 eus-assimp = self.callPackage ./eus-assimp {};

 eus-nlopt = self.callPackage ./eus-nlopt {};

 eus-qp = self.callPackage ./eus-qp {};

 eus-qpoases = self.callPackage ./eus-qpoases {};

 eus-teleop = self.callPackage ./eus-teleop {};

 euscollada = self.callPackage ./euscollada {};

 euslime = self.callPackage ./euslime {};

 euslisp = self.callPackage ./euslisp {};

 eusurdf = self.callPackage ./eusurdf {};

 executive-smach = self.callPackage ./executive-smach {};

 executive-smach-visualization = self.callPackage ./executive-smach-visualization {};

 exotica = self.callPackage ./exotica {};

 exotica-aico-solver = self.callPackage ./exotica-aico-solver {};

 exotica-cartpole-dynamics-solver = self.callPackage ./exotica-cartpole-dynamics-solver {};

 exotica-collision-scene-fcl-latest = self.callPackage ./exotica-collision-scene-fcl-latest {};

 exotica-core = self.callPackage ./exotica-core {};

 exotica-core-task-maps = self.callPackage ./exotica-core-task-maps {};

 exotica-ddp-solver = self.callPackage ./exotica-ddp-solver {};

 exotica-double-integrator-dynamics-solver = self.callPackage ./exotica-double-integrator-dynamics-solver {};

 exotica-dynamics-solvers = self.callPackage ./exotica-dynamics-solvers {};

 exotica-examples = self.callPackage ./exotica-examples {};

 exotica-ik-solver = self.callPackage ./exotica-ik-solver {};

 exotica-ilqg-solver = self.callPackage ./exotica-ilqg-solver {};

 exotica-ilqr-solver = self.callPackage ./exotica-ilqr-solver {};

 exotica-levenberg-marquardt-solver = self.callPackage ./exotica-levenberg-marquardt-solver {};

 exotica-ompl-control-solver = self.callPackage ./exotica-ompl-control-solver {};

 exotica-ompl-solver = self.callPackage ./exotica-ompl-solver {};

 exotica-pendulum-dynamics-solver = self.callPackage ./exotica-pendulum-dynamics-solver {};

 exotica-pinocchio-dynamics-solver = self.callPackage ./exotica-pinocchio-dynamics-solver {};

 exotica-quadrotor-dynamics-solver = self.callPackage ./exotica-quadrotor-dynamics-solver {};

 exotica-scipy-solver = self.callPackage ./exotica-scipy-solver {};

 exotica-time-indexed-rrt-connect-solver = self.callPackage ./exotica-time-indexed-rrt-connect-solver {};

 exotica-val-description = self.callPackage ./exotica-val-description {};

 explore-lite = self.callPackage ./explore-lite {};

 face-detector = self.callPackage ./face-detector {};

 fadecandy-driver = self.callPackage ./fadecandy-driver {};

 fadecandy-msgs = self.callPackage ./fadecandy-msgs {};

 fake-localization = self.callPackage ./fake-localization {};

 fath-pivot-mount-description = self.callPackage ./fath-pivot-mount-description {};

 fcl = self.callPackage ./fcl {};

 fcl-catkin = self.callPackage ./fcl-catkin {};

 fetch-auto-dock-msgs = self.callPackage ./fetch-auto-dock-msgs {};

 fetch-bringup = self.callPackage ./fetch-bringup {};

 fetch-calibration = self.callPackage ./fetch-calibration {};

 fetch-depth-layer = self.callPackage ./fetch-depth-layer {};

 fetch-description = self.callPackage ./fetch-description {};

 fetch-driver-msgs = self.callPackage ./fetch-driver-msgs {};

 fetch-drivers = self.callPackage ./fetch-drivers {};

 fetch-ikfast-plugin = self.callPackage ./fetch-ikfast-plugin {};

 fetch-maps = self.callPackage ./fetch-maps {};

 fetch-moveit-config = self.callPackage ./fetch-moveit-config {};

 fetch-navigation = self.callPackage ./fetch-navigation {};

 fetch-open-auto-dock = self.callPackage ./fetch-open-auto-dock {};

 fetch-ros = self.callPackage ./fetch-ros {};

 fetch-teleop = self.callPackage ./fetch-teleop {};

 ff = self.callPackage ./ff {};

 ffha = self.callPackage ./ffha {};

 fiducial-msgs = self.callPackage ./fiducial-msgs {};

 fiducial-slam = self.callPackage ./fiducial-slam {};

 fiducials = self.callPackage ./fiducials {};

 fields2cover = self.callPackage ./fields2cover {};

 filters = self.callPackage ./filters {};

 find-object-2d = self.callPackage ./find-object-2d {};

 fingertip-pressure = self.callPackage ./fingertip-pressure {};

 fkie-master-discovery = self.callPackage ./fkie-master-discovery {};

 fkie-master-sync = self.callPackage ./fkie-master-sync {};

 fkie-message-filters = self.callPackage ./fkie-message-filters {};

 fkie-multimaster = self.callPackage ./fkie-multimaster {};

 fkie-multimaster-msgs = self.callPackage ./fkie-multimaster-msgs {};

 fkie-node-manager = self.callPackage ./fkie-node-manager {};

 fkie-node-manager-daemon = self.callPackage ./fkie-node-manager-daemon {};

 fkie-potree-rviz-plugin = self.callPackage ./fkie-potree-rviz-plugin {};

 flatland = self.callPackage ./flatland {};

 flatland-msgs = self.callPackage ./flatland-msgs {};

 flatland-plugins = self.callPackage ./flatland-plugins {};

 flatland-server = self.callPackage ./flatland-server {};

 flatland-viz = self.callPackage ./flatland-viz {};

 flexbe-behavior-engine = self.callPackage ./flexbe-behavior-engine {};

 flexbe-core = self.callPackage ./flexbe-core {};

 flexbe-input = self.callPackage ./flexbe-input {};

 flexbe-mirror = self.callPackage ./flexbe-mirror {};

 flexbe-msgs = self.callPackage ./flexbe-msgs {};

 flexbe-onboard = self.callPackage ./flexbe-onboard {};

 flexbe-states = self.callPackage ./flexbe-states {};

 flexbe-testing = self.callPackage ./flexbe-testing {};

 flexbe-widget = self.callPackage ./flexbe-widget {};

 flir-camera-description = self.callPackage ./flir-camera-description {};

 flir-camera-driver = self.callPackage ./flir-camera-driver {};

 floam = self.callPackage ./floam {};

 fmi-adapter = self.callPackage ./fmi-adapter {};

 fmi-adapter-examples = self.callPackage ./fmi-adapter-examples {};

 force-torque-sensor-controller = self.callPackage ./force-torque-sensor-controller {};

 forward-command-controller = self.callPackage ./forward-command-controller {};

 four-wheel-steering-controller = self.callPackage ./four-wheel-steering-controller {};

 four-wheel-steering-msgs = self.callPackage ./four-wheel-steering-msgs {};

 foxglove-bridge = self.callPackage ./foxglove-bridge {};

 foxglove-msgs = self.callPackage ./foxglove-msgs {};

 frame-editor = self.callPackage ./frame-editor {};

 franka-control = self.callPackage ./franka-control {};

 franka-description = self.callPackage ./franka-description {};

 franka-example-controllers = self.callPackage ./franka-example-controllers {};

 franka-gazebo = self.callPackage ./franka-gazebo {};

 franka-gripper = self.callPackage ./franka-gripper {};

 franka-hw = self.callPackage ./franka-hw {};

 franka-msgs = self.callPackage ./franka-msgs {};

 franka-ros = self.callPackage ./franka-ros {};

 franka-visualization = self.callPackage ./franka-visualization {};

 freight-bringup = self.callPackage ./freight-bringup {};

 fuse = self.callPackage ./fuse {};

 fuse-constraints = self.callPackage ./fuse-constraints {};

 fuse-core = self.callPackage ./fuse-core {};

 fuse-doc = self.callPackage ./fuse-doc {};

 fuse-graphs = self.callPackage ./fuse-graphs {};

 fuse-loss = self.callPackage ./fuse-loss {};

 fuse-models = self.callPackage ./fuse-models {};

 fuse-msgs = self.callPackage ./fuse-msgs {};

 fuse-optimizers = self.callPackage ./fuse-optimizers {};

 fuse-publishers = self.callPackage ./fuse-publishers {};

 fuse-variables = self.callPackage ./fuse-variables {};

 fuse-viz = self.callPackage ./fuse-viz {};

 gazebo-custom-sensor-preloader = self.callPackage ./gazebo-custom-sensor-preloader {};

 gazebo-dev = self.callPackage ./gazebo-dev {};

 gazebo-msgs = self.callPackage ./gazebo-msgs {};

 gazebo-plugins = self.callPackage ./gazebo-plugins {};

 gazebo-ros = self.callPackage ./gazebo-ros {};

 gazebo-ros-control = self.callPackage ./gazebo-ros-control {};

 gazebo-ros-control-select-joints = self.callPackage ./gazebo-ros-control-select-joints {};

 gazebo-ros-pkgs = self.callPackage ./gazebo-ros-pkgs {};

 gazebo-video-monitor-msgs = self.callPackage ./gazebo-video-monitor-msgs {};

 gazebo-video-monitor-plugins = self.callPackage ./gazebo-video-monitor-plugins {};

 gazebo-video-monitor-utils = self.callPackage ./gazebo-video-monitor-utils {};

 gazebo-video-monitors = self.callPackage ./gazebo-video-monitors {};

 gdrive-ros = self.callPackage ./gdrive-ros {};

 gencpp = self.callPackage ./gencpp {};

 generic-throttle = self.callPackage ./generic-throttle {};

 geneus = self.callPackage ./geneus {};

 genlisp = self.callPackage ./genlisp {};

 genmsg = self.callPackage ./genmsg {};

 genmypy = self.callPackage ./genmypy {};

 gennodejs = self.callPackage ./gennodejs {};

 genpy = self.callPackage ./genpy {};

 geodesy = self.callPackage ./geodesy {};

 geographic-info = self.callPackage ./geographic-info {};

 geographic-msgs = self.callPackage ./geographic-msgs {};

 geometric-shapes = self.callPackage ./geometric-shapes {};

 geometry = self.callPackage ./geometry {};

 geometry2 = self.callPackage ./geometry2 {};

 geometry-msgs = self.callPackage ./geometry-msgs {};

 geometry-tutorials = self.callPackage ./geometry-tutorials {};

 gl-dependency = self.callPackage ./gl-dependency {};

 global-planner = self.callPackage ./global-planner {};

 global-planner-tests = self.callPackage ./global-planner-tests {};

 gmapping = self.callPackage ./gmapping {};

 gmcl = self.callPackage ./gmcl {};

 gnsstk = self.callPackage ./gnsstk {};

 goal-passer = self.callPackage ./goal-passer {};

 google-chat-ros = self.callPackage ./google-chat-ros {};

 gpio-controller = self.callPackage ./gpio-controller {};

 gpp-interface = self.callPackage ./gpp-interface {};

 gpp-plugin = self.callPackage ./gpp-plugin {};

 gpp-prune-path = self.callPackage ./gpp-prune-path {};

 gpp-update-map = self.callPackage ./gpp-update-map {};

 gps-common = self.callPackage ./gps-common {};

 gps-umd = self.callPackage ./gps-umd {};

 gpsd-client = self.callPackage ./gpsd-client {};

 graceful-controller = self.callPackage ./graceful-controller {};

 graceful-controller-ros = self.callPackage ./graceful-controller-ros {};

 graft = self.callPackage ./graft {};

 graph-msgs = self.callPackage ./graph-msgs {};

 grasping-msgs = self.callPackage ./grasping-msgs {};

 grepros = self.callPackage ./grepros {};

 grid-map = self.callPackage ./grid-map {};

 grid-map-core = self.callPackage ./grid-map-core {};

 grid-map-costmap-2d = self.callPackage ./grid-map-costmap-2d {};

 grid-map-cv = self.callPackage ./grid-map-cv {};

 grid-map-demos = self.callPackage ./grid-map-demos {};

 grid-map-filters = self.callPackage ./grid-map-filters {};

 grid-map-loader = self.callPackage ./grid-map-loader {};

 grid-map-msgs = self.callPackage ./grid-map-msgs {};

 grid-map-octomap = self.callPackage ./grid-map-octomap {};

 grid-map-pcl = self.callPackage ./grid-map-pcl {};

 grid-map-ros = self.callPackage ./grid-map-ros {};

 grid-map-rviz-plugin = self.callPackage ./grid-map-rviz-plugin {};

 grid-map-sdf = self.callPackage ./grid-map-sdf {};

 grid-map-visualization = self.callPackage ./grid-map-visualization {};

 gripper-action-controller = self.callPackage ./gripper-action-controller {};

 grpc = self.callPackage ./grpc {};

 gtsam = self.callPackage ./gtsam {};

 handeye = self.callPackage ./handeye {};

 hardware-interface = self.callPackage ./hardware-interface {};

 hdf5-map-io = self.callPackage ./hdf5-map-io {};

 hebi-cpp-api = self.callPackage ./hebi-cpp-api {};

 hector-components-description = self.callPackage ./hector-components-description {};

 hector-compressed-map-transport = self.callPackage ./hector-compressed-map-transport {};

 hector-gazebo = self.callPackage ./hector-gazebo {};

 hector-gazebo-plugins = self.callPackage ./hector-gazebo-plugins {};

 hector-gazebo-thermal-camera = self.callPackage ./hector-gazebo-thermal-camera {};

 hector-gazebo-worlds = self.callPackage ./hector-gazebo-worlds {};

 hector-geotiff = self.callPackage ./hector-geotiff {};

 hector-geotiff-launch = self.callPackage ./hector-geotiff-launch {};

 hector-geotiff-plugins = self.callPackage ./hector-geotiff-plugins {};

 hector-imu-attitude-to-tf = self.callPackage ./hector-imu-attitude-to-tf {};

 hector-imu-tools = self.callPackage ./hector-imu-tools {};

 hector-localization = self.callPackage ./hector-localization {};

 hector-map-server = self.callPackage ./hector-map-server {};

 hector-map-tools = self.callPackage ./hector-map-tools {};

 hector-mapping = self.callPackage ./hector-mapping {};

 hector-marker-drawing = self.callPackage ./hector-marker-drawing {};

 hector-models = self.callPackage ./hector-models {};

 hector-nav-msgs = self.callPackage ./hector-nav-msgs {};

 hector-pose-estimation = self.callPackage ./hector-pose-estimation {};

 hector-pose-estimation-core = self.callPackage ./hector-pose-estimation-core {};

 hector-sensors-description = self.callPackage ./hector-sensors-description {};

 hector-sensors-gazebo = self.callPackage ./hector-sensors-gazebo {};

 hector-slam = self.callPackage ./hector-slam {};

 hector-slam-launch = self.callPackage ./hector-slam-launch {};

 hector-trajectory-server = self.callPackage ./hector-trajectory-server {};

 hector-xacro-tools = self.callPackage ./hector-xacro-tools {};

 hls-lfcd-lds-driver = self.callPackage ./hls-lfcd-lds-driver {};

 hokuyo3d = self.callPackage ./hokuyo3d {};

 hpp-fcl = self.callPackage ./hpp-fcl {};

 hri = self.callPackage ./hri {};

 hri-actions-msgs = self.callPackage ./hri-actions-msgs {};

 hri-msgs = self.callPackage ./hri-msgs {};

 hri-rviz = self.callPackage ./hri-rviz {};

 human-description = self.callPackage ./human-description {};

 husky-control = self.callPackage ./husky-control {};

 husky-description = self.callPackage ./husky-description {};

 husky-desktop = self.callPackage ./husky-desktop {};

 husky-gazebo = self.callPackage ./husky-gazebo {};

 husky-msgs = self.callPackage ./husky-msgs {};

 husky-navigation = self.callPackage ./husky-navigation {};

 husky-simulator = self.callPackage ./husky-simulator {};

 husky-viz = self.callPackage ./husky-viz {};

 ibeo-msgs = self.callPackage ./ibeo-msgs {};

 ifm3d = self.callPackage ./ifm3d {};

 ifm3d-core = self.callPackage ./ifm3d-core {};

 ifopt = self.callPackage ./ifopt {};

 ign-ros-control-demos = self.callPackage ./ign-ros-control-demos {};

 image-cb-detector = self.callPackage ./image-cb-detector {};

 image-common = self.callPackage ./image-common {};

 image-exposure-msgs = self.callPackage ./image-exposure-msgs {};

 image-geometry = self.callPackage ./image-geometry {};

 image-pipeline = self.callPackage ./image-pipeline {};

 image-proc = self.callPackage ./image-proc {};

 image-publisher = self.callPackage ./image-publisher {};

 image-rotate = self.callPackage ./image-rotate {};

 image-transport = self.callPackage ./image-transport {};

 image-transport-codecs = self.callPackage ./image-transport-codecs {};

 image-transport-plugins = self.callPackage ./image-transport-plugins {};

 image-view = self.callPackage ./image-view {};

 image-view2 = self.callPackage ./image-view2 {};

 imagesift = self.callPackage ./imagesift {};

 imagezero = self.callPackage ./imagezero {};

 imagezero-image-transport = self.callPackage ./imagezero-image-transport {};

 imagezero-ros = self.callPackage ./imagezero-ros {};

 imu-complementary-filter = self.callPackage ./imu-complementary-filter {};

 imu-filter-madgwick = self.callPackage ./imu-filter-madgwick {};

 imu-from-ios-sensorlog = self.callPackage ./imu-from-ios-sensorlog {};

 imu-monitor = self.callPackage ./imu-monitor {};

 imu-pipeline = self.callPackage ./imu-pipeline {};

 imu-processors = self.callPackage ./imu-processors {};

 imu-sensor-controller = self.callPackage ./imu-sensor-controller {};

 imu-tools = self.callPackage ./imu-tools {};

 imu-transformer = self.callPackage ./imu-transformer {};

 industrial-core = self.callPackage ./industrial-core {};

 industrial-deprecated = self.callPackage ./industrial-deprecated {};

 industrial-msgs = self.callPackage ./industrial-msgs {};

 industrial-robot-client = self.callPackage ./industrial-robot-client {};

 industrial-robot-simulator = self.callPackage ./industrial-robot-simulator {};

 industrial-robot-status-controller = self.callPackage ./industrial-robot-status-controller {};

 industrial-robot-status-interface = self.callPackage ./industrial-robot-status-interface {};

 industrial-trajectory-filters = self.callPackage ./industrial-trajectory-filters {};

 industrial-utils = self.callPackage ./industrial-utils {};

 inorbit-republisher = self.callPackage ./inorbit-republisher {};

 interactive-marker-tutorials = self.callPackage ./interactive-marker-tutorials {};

 interactive-marker-twist-server = self.callPackage ./interactive-marker-twist-server {};

 interactive-markers = self.callPackage ./interactive-markers {};

 interval-intersection = self.callPackage ./interval-intersection {};

 ipa-3d-fov-visualization = self.callPackage ./ipa-3d-fov-visualization {};

 ipa-differential-docking = self.callPackage ./ipa-differential-docking {};

 ipcamera-driver = self.callPackage ./ipcamera-driver {};

 ira-laser-tools = self.callPackage ./ira-laser-tools {};

 iris-lama = self.callPackage ./iris-lama {};

 iris-lama-ros = self.callPackage ./iris-lama-ros {};

 ivcon = self.callPackage ./ivcon {};

 ixblue-ins = self.callPackage ./ixblue-ins {};

 ixblue-ins-driver = self.callPackage ./ixblue-ins-driver {};

 ixblue-ins-msgs = self.callPackage ./ixblue-ins-msgs {};

 ixblue-stdbin-decoder = self.callPackage ./ixblue-stdbin-decoder {};

 jackal-control = self.callPackage ./jackal-control {};

 jackal-description = self.callPackage ./jackal-description {};

 jackal-desktop = self.callPackage ./jackal-desktop {};

 jackal-gazebo = self.callPackage ./jackal-gazebo {};

 jackal-msgs = self.callPackage ./jackal-msgs {};

 jackal-navigation = self.callPackage ./jackal-navigation {};

 jackal-simulator = self.callPackage ./jackal-simulator {};

 jackal-tutorials = self.callPackage ./jackal-tutorials {};

 jackal-viz = self.callPackage ./jackal-viz {};

 jderobot-assets = self.callPackage ./jderobot-assets {};

 jderobot-drones = self.callPackage ./jderobot-drones {};

 joint-limits-interface = self.callPackage ./joint-limits-interface {};

 joint-qualification-controllers = self.callPackage ./joint-qualification-controllers {};

 joint-state-controller = self.callPackage ./joint-state-controller {};

 joint-state-publisher = self.callPackage ./joint-state-publisher {};

 joint-state-publisher-gui = self.callPackage ./joint-state-publisher-gui {};

 joint-states-settler = self.callPackage ./joint-states-settler {};

 joint-trajectory-action = self.callPackage ./joint-trajectory-action {};

 joint-trajectory-action-tools = self.callPackage ./joint-trajectory-action-tools {};

 joint-trajectory-controller = self.callPackage ./joint-trajectory-controller {};

 joint-trajectory-generator = self.callPackage ./joint-trajectory-generator {};

 joy = self.callPackage ./joy {};

 joy-listener = self.callPackage ./joy-listener {};

 joy-mouse = self.callPackage ./joy-mouse {};

 joy-teleop = self.callPackage ./joy-teleop {};

 joystick-interrupt = self.callPackage ./joystick-interrupt {};

 jsk-3rdparty = self.callPackage ./jsk-3rdparty {};

 jsk-calibration = self.callPackage ./jsk-calibration {};

 jsk-common = self.callPackage ./jsk-common {};

 jsk-common-msgs = self.callPackage ./jsk-common-msgs {};

 jsk-control = self.callPackage ./jsk-control {};

 jsk-footstep-controller = self.callPackage ./jsk-footstep-controller {};

 jsk-footstep-msgs = self.callPackage ./jsk-footstep-msgs {};

 jsk-footstep-planner = self.callPackage ./jsk-footstep-planner {};

 jsk-gui-msgs = self.callPackage ./jsk-gui-msgs {};

 jsk-hark-msgs = self.callPackage ./jsk-hark-msgs {};

 jsk-ik-server = self.callPackage ./jsk-ik-server {};

 jsk-interactive = self.callPackage ./jsk-interactive {};

 jsk-interactive-marker = self.callPackage ./jsk-interactive-marker {};

 jsk-interactive-test = self.callPackage ./jsk-interactive-test {};

 jsk-model-tools = self.callPackage ./jsk-model-tools {};

 jsk-network-tools = self.callPackage ./jsk-network-tools {};

 jsk-pcl-ros = self.callPackage ./jsk-pcl-ros {};

 jsk-pcl-ros-utils = self.callPackage ./jsk-pcl-ros-utils {};

 jsk-pr2eus = self.callPackage ./jsk-pr2eus {};

 jsk-recognition = self.callPackage ./jsk-recognition {};

 jsk-recognition-msgs = self.callPackage ./jsk-recognition-msgs {};

 jsk-roseus = self.callPackage ./jsk-roseus {};

 jsk-rqt-plugins = self.callPackage ./jsk-rqt-plugins {};

 jsk-teleop-joy = self.callPackage ./jsk-teleop-joy {};

 jsk-tilt-laser = self.callPackage ./jsk-tilt-laser {};

 jsk-topic-tools = self.callPackage ./jsk-topic-tools {};

 jsk-visualization = self.callPackage ./jsk-visualization {};

 jskeus = self.callPackage ./jskeus {};

 julius = self.callPackage ./julius {};

 kalman-filter = self.callPackage ./kalman-filter {};

 kartech-linear-actuator-msgs = self.callPackage ./kartech-linear-actuator-msgs {};

 kdl-conversions = self.callPackage ./kdl-conversions {};

 kdl-parser = self.callPackage ./kdl-parser {};

 kdl-parser-py = self.callPackage ./kdl-parser-py {};

 key-teleop = self.callPackage ./key-teleop {};

 khi-duaro-description = self.callPackage ./khi-duaro-description {};

 khi-duaro-gazebo = self.callPackage ./khi-duaro-gazebo {};

 khi-duaro-ikfast-plugin = self.callPackage ./khi-duaro-ikfast-plugin {};

 khi-duaro-moveit-config = self.callPackage ./khi-duaro-moveit-config {};

 khi-robot = self.callPackage ./khi-robot {};

 khi-robot-bringup = self.callPackage ./khi-robot-bringup {};

 khi-robot-control = self.callPackage ./khi-robot-control {};

 khi-robot-msgs = self.callPackage ./khi-robot-msgs {};

 khi-robot-test = self.callPackage ./khi-robot-test {};

 khi-rs007l-moveit-config = self.callPackage ./khi-rs007l-moveit-config {};

 khi-rs007n-moveit-config = self.callPackage ./khi-rs007n-moveit-config {};

 khi-rs013n-moveit-config = self.callPackage ./khi-rs013n-moveit-config {};

 khi-rs020n-moveit-config = self.callPackage ./khi-rs020n-moveit-config {};

 khi-rs025n-moveit-config = self.callPackage ./khi-rs025n-moveit-config {};

 khi-rs080n-moveit-config = self.callPackage ./khi-rs080n-moveit-config {};

 khi-rs-description = self.callPackage ./khi-rs-description {};

 khi-rs-gazebo = self.callPackage ./khi-rs-gazebo {};

 khi-rs-ikfast-plugin = self.callPackage ./khi-rs-ikfast-plugin {};

 knowledge-representation = self.callPackage ./knowledge-representation {};

 kobuki-core = self.callPackage ./kobuki-core {};

 kobuki-dock-drive = self.callPackage ./kobuki-dock-drive {};

 kobuki-driver = self.callPackage ./kobuki-driver {};

 kobuki-ftdi = self.callPackage ./kobuki-ftdi {};

 kobuki-msgs = self.callPackage ./kobuki-msgs {};

 kvh-geo-fog-3d = self.callPackage ./kvh-geo-fog-3d {};

 kvh-geo-fog-3d-driver = self.callPackage ./kvh-geo-fog-3d-driver {};

 kvh-geo-fog-3d-msgs = self.callPackage ./kvh-geo-fog-3d-msgs {};

 kvh-geo-fog-3d-rviz = self.callPackage ./kvh-geo-fog-3d-rviz {};

 label-manager = self.callPackage ./label-manager {};

 lanelet2 = self.callPackage ./lanelet2 {};

 lanelet2-core = self.callPackage ./lanelet2-core {};

 lanelet2-examples = self.callPackage ./lanelet2-examples {};

 lanelet2-io = self.callPackage ./lanelet2-io {};

 lanelet2-maps = self.callPackage ./lanelet2-maps {};

 lanelet2-matching = self.callPackage ./lanelet2-matching {};

 lanelet2-projection = self.callPackage ./lanelet2-projection {};

 lanelet2-python = self.callPackage ./lanelet2-python {};

 lanelet2-routing = self.callPackage ./lanelet2-routing {};

 lanelet2-traffic-rules = self.callPackage ./lanelet2-traffic-rules {};

 lanelet2-validation = self.callPackage ./lanelet2-validation {};

 laptop-battery-monitor = self.callPackage ./laptop-battery-monitor {};

 laser-assembler = self.callPackage ./laser-assembler {};

 laser-cb-detector = self.callPackage ./laser-cb-detector {};

 laser-filtering = self.callPackage ./laser-filtering {};

 laser-filters = self.callPackage ./laser-filters {};

 laser-geometry = self.callPackage ./laser-geometry {};

 laser-ortho-projector = self.callPackage ./laser-ortho-projector {};

 laser-pipeline = self.callPackage ./laser-pipeline {};

 laser-proc = self.callPackage ./laser-proc {};

 laser-scan-densifier = self.callPackage ./laser-scan-densifier {};

 laser-scan-matcher = self.callPackage ./laser-scan-matcher {};

 laser-scan-sparsifier = self.callPackage ./laser-scan-sparsifier {};

 laser-scan-splitter = self.callPackage ./laser-scan-splitter {};

 laser-tilt-controller-filter = self.callPackage ./laser-tilt-controller-filter {};

 led-msgs = self.callPackage ./led-msgs {};

 leo = self.callPackage ./leo {};

 leo-bringup = self.callPackage ./leo-bringup {};

 leo-description = self.callPackage ./leo-description {};

 leo-desktop = self.callPackage ./leo-desktop {};

 leo-example-follow-ar-tag = self.callPackage ./leo-example-follow-ar-tag {};

 leo-example-line-follower = self.callPackage ./leo-example-line-follower {};

 leo-example-object-detection = self.callPackage ./leo-example-object-detection {};

 leo-examples = self.callPackage ./leo-examples {};

 leo-fw = self.callPackage ./leo-fw {};

 leo-gazebo = self.callPackage ./leo-gazebo {};

 leo-gazebo-plugins = self.callPackage ./leo-gazebo-plugins {};

 leo-gazebo-worlds = self.callPackage ./leo-gazebo-worlds {};

 leo-msgs = self.callPackage ./leo-msgs {};

 leo-robot = self.callPackage ./leo-robot {};

 leo-simulator = self.callPackage ./leo-simulator {};

 leo-teleop = self.callPackage ./leo-teleop {};

 leo-viz = self.callPackage ./leo-viz {};

 lgsvl-msgs = self.callPackage ./lgsvl-msgs {};

 libcmt = self.callPackage ./libcmt {};

 libcreate = self.callPackage ./libcreate {};

 libdlib = self.callPackage ./libdlib {};

 libfranka = self.callPackage ./libfranka {};

 libg2o = self.callPackage ./libg2o {};

 libmavconn = self.callPackage ./libmavconn {};

 libnabo = self.callPackage ./libnabo {};

 libntcan = self.callPackage ./libntcan {};

 libpcan = self.callPackage ./libpcan {};

 libphidget22 = self.callPackage ./libphidget22 {};

 libphidgets = self.callPackage ./libphidgets {};

 libpointmatcher = self.callPackage ./libpointmatcher {};

 librealsense2 = self.callPackage ./librealsense2 {};

 librviz-tutorial = self.callPackage ./librviz-tutorial {};

 libsensors-monitor = self.callPackage ./libsensors-monitor {};

 libsiftfast = self.callPackage ./libsiftfast {};

 libuvc-camera = self.callPackage ./libuvc-camera {};

 libuvc-ros = self.callPackage ./libuvc-ros {};

 linux-peripheral-interfaces = self.callPackage ./linux-peripheral-interfaces {};

 lms1xx = self.callPackage ./lms1xx {};

 lockfree = self.callPackage ./lockfree {};

 locomotor = self.callPackage ./locomotor {};

 locomotor-msgs = self.callPackage ./locomotor-msgs {};

 locomove-base = self.callPackage ./locomove-base {};

 log-view = self.callPackage ./log-view {};

 lpg-planner = self.callPackage ./lpg-planner {};

 lsc-ros-driver = self.callPackage ./lsc-ros-driver {};

 lusb = self.callPackage ./lusb {};

 magic-enum = self.callPackage ./magic-enum {};

 magical-ros2-conversion-tool = self.callPackage ./magical-ros2-conversion-tool {};

 magnetometer-compass = self.callPackage ./magnetometer-compass {};

 map-laser = self.callPackage ./map-laser {};

 map-msgs = self.callPackage ./map-msgs {};

 map-organizer = self.callPackage ./map-organizer {};

 map-organizer-msgs = self.callPackage ./map-organizer-msgs {};

 map-server = self.callPackage ./map-server {};

 mapviz = self.callPackage ./mapviz {};

 mapviz-plugins = self.callPackage ./mapviz-plugins {};

 marker-msgs = self.callPackage ./marker-msgs {};

 marti-can-msgs = self.callPackage ./marti-can-msgs {};

 marti-common-msgs = self.callPackage ./marti-common-msgs {};

 marti-data-structures = self.callPackage ./marti-data-structures {};

 marti-dbw-msgs = self.callPackage ./marti-dbw-msgs {};

 marti-introspection-msgs = self.callPackage ./marti-introspection-msgs {};

 marti-nav-msgs = self.callPackage ./marti-nav-msgs {};

 marti-perception-msgs = self.callPackage ./marti-perception-msgs {};

 marti-sensor-msgs = self.callPackage ./marti-sensor-msgs {};

 marti-status-msgs = self.callPackage ./marti-status-msgs {};

 marti-visualization-msgs = self.callPackage ./marti-visualization-msgs {};

 marvelmind-nav = self.callPackage ./marvelmind-nav {};

 massrobotics-amr-sender = self.callPackage ./massrobotics-amr-sender {};

 mavlink = self.callPackage ./mavlink {};

 mavros = self.callPackage ./mavros {};

 mavros-extras = self.callPackage ./mavros-extras {};

 mavros-msgs = self.callPackage ./mavros-msgs {};

 mbf-abstract-core = self.callPackage ./mbf-abstract-core {};

 mbf-abstract-nav = self.callPackage ./mbf-abstract-nav {};

 mbf-costmap-core = self.callPackage ./mbf-costmap-core {};

 mbf-costmap-nav = self.callPackage ./mbf-costmap-nav {};

 mbf-mesh-core = self.callPackage ./mbf-mesh-core {};

 mbf-mesh-nav = self.callPackage ./mbf-mesh-nav {};

 mbf-msgs = self.callPackage ./mbf-msgs {};

 mbf-simple-nav = self.callPackage ./mbf-simple-nav {};

 mbf-utility = self.callPackage ./mbf-utility {};

 mcl-3dl = self.callPackage ./mcl-3dl {};

 mcl-3dl-msgs = self.callPackage ./mcl-3dl-msgs {};

 mecanum-gazebo-plugin = self.callPackage ./mecanum-gazebo-plugin {};

 media-export = self.callPackage ./media-export {};

 mesh-client = self.callPackage ./mesh-client {};

 mesh-controller = self.callPackage ./mesh-controller {};

 mesh-layers = self.callPackage ./mesh-layers {};

 mesh-map = self.callPackage ./mesh-map {};

 mesh-msgs = self.callPackage ./mesh-msgs {};

 mesh-msgs-conversions = self.callPackage ./mesh-msgs-conversions {};

 mesh-msgs-hdf5 = self.callPackage ./mesh-msgs-hdf5 {};

 mesh-msgs-transform = self.callPackage ./mesh-msgs-transform {};

 mesh-navigation = self.callPackage ./mesh-navigation {};

 message-filters = self.callPackage ./message-filters {};

 message-generation = self.callPackage ./message-generation {};

 message-runtime = self.callPackage ./message-runtime {};

 message-tf-frame-transformer = self.callPackage ./message-tf-frame-transformer {};

 message-to-tf = self.callPackage ./message-to-tf {};

 mia-hand-bringup = self.callPackage ./mia-hand-bringup {};

 mia-hand-description = self.callPackage ./mia-hand-description {};

 mia-hand-gazebo = self.callPackage ./mia-hand-gazebo {};

 mia-hand-moveit-config = self.callPackage ./mia-hand-moveit-config {};

 mia-hand-msgs = self.callPackage ./mia-hand-msgs {};

 mia-hand-ros-control = self.callPackage ./mia-hand-ros-control {};

 mia-hand-ros-pkgs = self.callPackage ./mia-hand-ros-pkgs {};

 microstrain-3dmgx2-imu = self.callPackage ./microstrain-3dmgx2-imu {};

 microstrain-inertial-driver = self.callPackage ./microstrain-inertial-driver {};

 microstrain-inertial-examples = self.callPackage ./microstrain-inertial-examples {};

 microstrain-inertial-msgs = self.callPackage ./microstrain-inertial-msgs {};

 microstrain-inertial-rqt = self.callPackage ./microstrain-inertial-rqt {};

 mikrotik-swos-tools = self.callPackage ./mikrotik-swos-tools {};

 mini-maxwell = self.callPackage ./mini-maxwell {};

 mir-actions = self.callPackage ./mir-actions {};

 mir-description = self.callPackage ./mir-description {};

 mir-driver = self.callPackage ./mir-driver {};

 mir-dwb-critics = self.callPackage ./mir-dwb-critics {};

 mir-gazebo = self.callPackage ./mir-gazebo {};

 mir-msgs = self.callPackage ./mir-msgs {};

 mir-navigation = self.callPackage ./mir-navigation {};

 mir-robot = self.callPackage ./mir-robot {};

 mk = self.callPackage ./mk {};

 mlx90640-thermal-camera = self.callPackage ./mlx90640-thermal-camera {};

 mobile-robot-simulator = self.callPackage ./mobile-robot-simulator {};

 mobileye-560-660-msgs = self.callPackage ./mobileye-560-660-msgs {};

 mocap-nokov = self.callPackage ./mocap-nokov {};

 mocap-optitrack = self.callPackage ./mocap-optitrack {};

 mongodb-log = self.callPackage ./mongodb-log {};

 mongodb-store-msgs = self.callPackage ./mongodb-store-msgs {};

 monkeywrench = self.callPackage ./monkeywrench {};

 monocam-settler = self.callPackage ./monocam-settler {};

 mouse-teleop = self.callPackage ./mouse-teleop {};

 move-base = self.callPackage ./move-base {};

 move-base-flex = self.callPackage ./move-base-flex {};

 move-base-msgs = self.callPackage ./move-base-msgs {};

 move-base-sequence = self.callPackage ./move-base-sequence {};

 move-basic = self.callPackage ./move-basic {};

 move-slow-and-clear = self.callPackage ./move-slow-and-clear {};

 moveit = self.callPackage ./moveit {};

 moveit-chomp-optimizer-adapter = self.callPackage ./moveit-chomp-optimizer-adapter {};

 moveit-core = self.callPackage ./moveit-core {};

 moveit-fake-controller-manager = self.callPackage ./moveit-fake-controller-manager {};

 moveit-kinematics = self.callPackage ./moveit-kinematics {};

 moveit-msgs = self.callPackage ./moveit-msgs {};

 moveit-opw-kinematics-plugin = self.callPackage ./moveit-opw-kinematics-plugin {};

 moveit-planners = self.callPackage ./moveit-planners {};

 moveit-planners-chomp = self.callPackage ./moveit-planners-chomp {};

 moveit-planners-ompl = self.callPackage ./moveit-planners-ompl {};

 moveit-plugins = self.callPackage ./moveit-plugins {};

 moveit-resources = self.callPackage ./moveit-resources {};

 moveit-resources-dual-panda-moveit-config = self.callPackage ./moveit-resources-dual-panda-moveit-config {};

 moveit-resources-fanuc-description = self.callPackage ./moveit-resources-fanuc-description {};

 moveit-resources-fanuc-moveit-config = self.callPackage ./moveit-resources-fanuc-moveit-config {};

 moveit-resources-panda-description = self.callPackage ./moveit-resources-panda-description {};

 moveit-resources-panda-moveit-config = self.callPackage ./moveit-resources-panda-moveit-config {};

 moveit-resources-pr2-description = self.callPackage ./moveit-resources-pr2-description {};

 moveit-resources-prbt-ikfast-manipulator-plugin = self.callPackage ./moveit-resources-prbt-ikfast-manipulator-plugin {};

 moveit-resources-prbt-moveit-config = self.callPackage ./moveit-resources-prbt-moveit-config {};

 moveit-resources-prbt-pg70-support = self.callPackage ./moveit-resources-prbt-pg70-support {};

 moveit-resources-prbt-support = self.callPackage ./moveit-resources-prbt-support {};

 moveit-ros = self.callPackage ./moveit-ros {};

 moveit-ros-benchmarks = self.callPackage ./moveit-ros-benchmarks {};

 moveit-ros-control-interface = self.callPackage ./moveit-ros-control-interface {};

 moveit-ros-manipulation = self.callPackage ./moveit-ros-manipulation {};

 moveit-ros-move-group = self.callPackage ./moveit-ros-move-group {};

 moveit-ros-occupancy-map-monitor = self.callPackage ./moveit-ros-occupancy-map-monitor {};

 moveit-ros-perception = self.callPackage ./moveit-ros-perception {};

 moveit-ros-planning = self.callPackage ./moveit-ros-planning {};

 moveit-ros-planning-interface = self.callPackage ./moveit-ros-planning-interface {};

 moveit-ros-robot-interaction = self.callPackage ./moveit-ros-robot-interaction {};

 moveit-ros-visualization = self.callPackage ./moveit-ros-visualization {};

 moveit-ros-warehouse = self.callPackage ./moveit-ros-warehouse {};

 moveit-runtime = self.callPackage ./moveit-runtime {};

 moveit-servo = self.callPackage ./moveit-servo {};

 moveit-setup-assistant = self.callPackage ./moveit-setup-assistant {};

 moveit-sim-controller = self.callPackage ./moveit-sim-controller {};

 moveit-simple-controller-manager = self.callPackage ./moveit-simple-controller-manager {};

 moveit-task-constructor-capabilities = self.callPackage ./moveit-task-constructor-capabilities {};

 moveit-task-constructor-core = self.callPackage ./moveit-task-constructor-core {};

 moveit-task-constructor-demo = self.callPackage ./moveit-task-constructor-demo {};

 moveit-task-constructor-msgs = self.callPackage ./moveit-task-constructor-msgs {};

 moveit-task-constructor-visualization = self.callPackage ./moveit-task-constructor-visualization {};

 moveit-visual-tools = self.callPackage ./moveit-visual-tools {};

 movie-publisher = self.callPackage ./movie-publisher {};

 mp2p-icp = self.callPackage ./mp2p-icp {};

 mpc-local-planner = self.callPackage ./mpc-local-planner {};

 mpc-local-planner-examples = self.callPackage ./mpc-local-planner-examples {};

 mpc-local-planner-msgs = self.callPackage ./mpc-local-planner-msgs {};

 mqtt-bridge = self.callPackage ./mqtt-bridge {};

 mqtt-client = self.callPackage ./mqtt-client {};

 mqtt-client-interfaces = self.callPackage ./mqtt-client-interfaces {};

 mrpt2 = self.callPackage ./mrpt2 {};

 mrpt-ekf-slam-2d = self.callPackage ./mrpt-ekf-slam-2d {};

 mrpt-ekf-slam-3d = self.callPackage ./mrpt-ekf-slam-3d {};

 mrpt-generic-sensor = self.callPackage ./mrpt-generic-sensor {};

 mrpt-graphslam-2d = self.callPackage ./mrpt-graphslam-2d {};

 mrpt-icp-slam-2d = self.callPackage ./mrpt-icp-slam-2d {};

 mrpt-local-obstacles = self.callPackage ./mrpt-local-obstacles {};

 mrpt-localization = self.callPackage ./mrpt-localization {};

 mrpt-map = self.callPackage ./mrpt-map {};

 mrpt-msgs = self.callPackage ./mrpt-msgs {};

 mrpt-msgs-bridge = self.callPackage ./mrpt-msgs-bridge {};

 mrpt-navigation = self.callPackage ./mrpt-navigation {};

 mrpt-path-planning = self.callPackage ./mrpt-path-planning {};

 mrpt-rawlog = self.callPackage ./mrpt-rawlog {};

 mrpt-rbpf-slam = self.callPackage ./mrpt-rbpf-slam {};

 mrpt-reactivenav2d = self.callPackage ./mrpt-reactivenav2d {};

 mrpt-sensorlib = self.callPackage ./mrpt-sensorlib {};

 mrpt-sensors = self.callPackage ./mrpt-sensors {};

 mrpt-sensors-examples = self.callPackage ./mrpt-sensors-examples {};

 mrpt-slam = self.callPackage ./mrpt-slam {};

 mrpt-tutorials = self.callPackage ./mrpt-tutorials {};

 mrt-cmake-modules = self.callPackage ./mrt-cmake-modules {};

 multi-map-server = self.callPackage ./multi-map-server {};

 multi-object-tracking-lidar = self.callPackage ./multi-object-tracking-lidar {};

 multires-image = self.callPackage ./multires-image {};

 multirobot-map-merge = self.callPackage ./multirobot-map-merge {};

 multisense = self.callPackage ./multisense {};

 multisense-bringup = self.callPackage ./multisense-bringup {};

 multisense-cal-check = self.callPackage ./multisense-cal-check {};

 multisense-description = self.callPackage ./multisense-description {};

 multisense-lib = self.callPackage ./multisense-lib {};

 multisense-ros = self.callPackage ./multisense-ros {};

 mvsim = self.callPackage ./mvsim {};

 nao-meshes = self.callPackage ./nao-meshes {};

 naoqi-bridge-msgs = self.callPackage ./naoqi-bridge-msgs {};

 naoqi-driver = self.callPackage ./naoqi-driver {};

 naoqi-libqi = self.callPackage ./naoqi-libqi {};

 naoqi-libqicore = self.callPackage ./naoqi-libqicore {};

 nav2d = self.callPackage ./nav2d {};

 nav2d-exploration = self.callPackage ./nav2d-exploration {};

 nav2d-karto = self.callPackage ./nav2d-karto {};

 nav2d-localizer = self.callPackage ./nav2d-localizer {};

 nav2d-msgs = self.callPackage ./nav2d-msgs {};

 nav2d-navigator = self.callPackage ./nav2d-navigator {};

 nav2d-operator = self.callPackage ./nav2d-operator {};

 nav2d-remote = self.callPackage ./nav2d-remote {};

 nav2d-tutorials = self.callPackage ./nav2d-tutorials {};

 nav-2d-msgs = self.callPackage ./nav-2d-msgs {};

 nav-2d-utils = self.callPackage ./nav-2d-utils {};

 nav-core = self.callPackage ./nav-core {};

 nav-core2 = self.callPackage ./nav-core2 {};

 nav-core-adapter = self.callPackage ./nav-core-adapter {};

 nav-grid = self.callPackage ./nav-grid {};

 nav-grid-iterators = self.callPackage ./nav-grid-iterators {};

 nav-grid-pub-sub = self.callPackage ./nav-grid-pub-sub {};

 nav-grid-server = self.callPackage ./nav-grid-server {};

 nav-msgs = self.callPackage ./nav-msgs {};

 navfn = self.callPackage ./navfn {};

 navigation = self.callPackage ./navigation {};

 navigation-experimental = self.callPackage ./navigation-experimental {};

 ncd-parser = self.callPackage ./ncd-parser {};

 neo-local-planner = self.callPackage ./neo-local-planner {};

 neobotix-usboard-msgs = self.callPackage ./neobotix-usboard-msgs {};

 neonavigation = self.callPackage ./neonavigation {};

 neonavigation-common = self.callPackage ./neonavigation-common {};

 neonavigation-launch = self.callPackage ./neonavigation-launch {};

 neonavigation-metrics-msgs = self.callPackage ./neonavigation-metrics-msgs {};

 neonavigation-msgs = self.callPackage ./neonavigation-msgs {};

 neonavigation-rviz-plugins = self.callPackage ./neonavigation-rviz-plugins {};

 nerian-stereo = self.callPackage ./nerian-stereo {};

 network-interface = self.callPackage ./network-interface {};

 nfc-ros = self.callPackage ./nfc-ros {};

 nmea-comms = self.callPackage ./nmea-comms {};

 nmea-msgs = self.callPackage ./nmea-msgs {};

 nmea-navsat-driver = self.callPackage ./nmea-navsat-driver {};

 nodelet = self.callPackage ./nodelet {};

 nodelet-core = self.callPackage ./nodelet-core {};

 nodelet-topic-tools = self.callPackage ./nodelet-topic-tools {};

 nodelet-tutorial-math = self.callPackage ./nodelet-tutorial-math {};

 nonpersistent-voxel-layer = self.callPackage ./nonpersistent-voxel-layer {};

 novatel-gps-driver = self.callPackage ./novatel-gps-driver {};

 novatel-gps-msgs = self.callPackage ./novatel-gps-msgs {};

 novatel-oem7-driver = self.callPackage ./novatel-oem7-driver {};

 novatel-oem7-msgs = self.callPackage ./novatel-oem7-msgs {};

 ntpd-driver = self.callPackage ./ntpd-driver {};

 ntrip-client = self.callPackage ./ntrip-client {};

 obj-to-pointcloud = self.callPackage ./obj-to-pointcloud {};

 object-recognition-msgs = self.callPackage ./object-recognition-msgs {};

 ocean-battery-driver = self.callPackage ./ocean-battery-driver {};

 octomap = self.callPackage ./octomap {};

 octomap-mapping = self.callPackage ./octomap-mapping {};

 octomap-msgs = self.callPackage ./octomap-msgs {};

 octomap-ros = self.callPackage ./octomap-ros {};

 octomap-rviz-plugins = self.callPackage ./octomap-rviz-plugins {};

 octomap-server = self.callPackage ./octomap-server {};

 octovis = self.callPackage ./octovis {};

 odva-ethernetip = self.callPackage ./odva-ethernetip {};

 oled-display-node = self.callPackage ./oled-display-node {};

 ompl = self.callPackage ./ompl {};

 omron-os32c-driver = self.callPackage ./omron-os32c-driver {};

 open-karto = self.callPackage ./open-karto {};

 open-manipulator-gazebo = self.callPackage ./open-manipulator-gazebo {};

 open-manipulator-msgs = self.callPackage ./open-manipulator-msgs {};

 open-manipulator-p-gazebo = self.callPackage ./open-manipulator-p-gazebo {};

 open-manipulator-p-simulations = self.callPackage ./open-manipulator-p-simulations {};

 open-manipulator-simulations = self.callPackage ./open-manipulator-simulations {};

 opencv-apps = self.callPackage ./opencv-apps {};

 opengm = self.callPackage ./opengm {};

 openni2-camera = self.callPackage ./openni2-camera {};

 openni2-launch = self.callPackage ./openni2-launch {};

 openni-description = self.callPackage ./openni-description {};

 openni-launch = self.callPackage ./openni-launch {};

 openrtm-aist = self.callPackage ./openrtm-aist {};

 openslam-gmapping = self.callPackage ./openslam-gmapping {};

 openzen-sensor = self.callPackage ./openzen-sensor {};

 opt-camera = self.callPackage ./opt-camera {};

 opw-kinematics = self.callPackage ./opw-kinematics {};

 osm-cartography = self.callPackage ./osm-cartography {};

 osqp = self.callPackage ./osqp {};

 osqp-vendor = self.callPackage ./osqp-vendor {};

 oxford-gps-eth = self.callPackage ./oxford-gps-eth {};

 p2os-doc = self.callPackage ./p2os-doc {};

 p2os-driver = self.callPackage ./p2os-driver {};

 p2os-launch = self.callPackage ./p2os-launch {};

 p2os-msgs = self.callPackage ./p2os-msgs {};

 p2os-teleop = self.callPackage ./p2os-teleop {};

 p2os-urdf = self.callPackage ./p2os-urdf {};

 pacmod-msgs = self.callPackage ./pacmod-msgs {};

 paho-mqtt-c = self.callPackage ./paho-mqtt-c {};

 paho-mqtt-cpp = self.callPackage ./paho-mqtt-cpp {};

 pal-carbon-collector = self.callPackage ./pal-carbon-collector {};

 pal-statistics = self.callPackage ./pal-statistics {};

 pal-statistics-msgs = self.callPackage ./pal-statistics-msgs {};

 panda-moveit-config = self.callPackage ./panda-moveit-config {};

 parameter-pa = self.callPackage ./parameter-pa {};

 pass-through-controllers = self.callPackage ./pass-through-controllers {};

 pcl-conversions = self.callPackage ./pcl-conversions {};

 pcl-msgs = self.callPackage ./pcl-msgs {};

 pcl-ros = self.callPackage ./pcl-ros {};

 people = self.callPackage ./people {};

 people-msgs = self.callPackage ./people-msgs {};

 people-velocity-tracker = self.callPackage ./people-velocity-tracker {};

 pepper-meshes = self.callPackage ./pepper-meshes {};

 perception = self.callPackage ./perception {};

 perception-pcl = self.callPackage ./perception-pcl {};

 pf-description = self.callPackage ./pf-description {};

 pf-driver = self.callPackage ./pf-driver {};

 phidgets-accelerometer = self.callPackage ./phidgets-accelerometer {};

 phidgets-analog-inputs = self.callPackage ./phidgets-analog-inputs {};

 phidgets-analog-outputs = self.callPackage ./phidgets-analog-outputs {};

 phidgets-api = self.callPackage ./phidgets-api {};

 phidgets-digital-inputs = self.callPackage ./phidgets-digital-inputs {};

 phidgets-digital-outputs = self.callPackage ./phidgets-digital-outputs {};

 phidgets-drivers = self.callPackage ./phidgets-drivers {};

 phidgets-gyroscope = self.callPackage ./phidgets-gyroscope {};

 phidgets-high-speed-encoder = self.callPackage ./phidgets-high-speed-encoder {};

 phidgets-ik = self.callPackage ./phidgets-ik {};

 phidgets-magnetometer = self.callPackage ./phidgets-magnetometer {};

 phidgets-motors = self.callPackage ./phidgets-motors {};

 phidgets-msgs = self.callPackage ./phidgets-msgs {};

 phidgets-spatial = self.callPackage ./phidgets-spatial {};

 phidgets-temperature = self.callPackage ./phidgets-temperature {};

 picovoice-driver = self.callPackage ./picovoice-driver {};

 picovoice-msgs = self.callPackage ./picovoice-msgs {};

 pid = self.callPackage ./pid {};

 pilz-control = self.callPackage ./pilz-control {};

 pilz-industrial-motion = self.callPackage ./pilz-industrial-motion {};

 pilz-industrial-motion-planner = self.callPackage ./pilz-industrial-motion-planner {};

 pilz-industrial-motion-planner-testutils = self.callPackage ./pilz-industrial-motion-planner-testutils {};

 pilz-industrial-motion-testutils = self.callPackage ./pilz-industrial-motion-testutils {};

 pilz-msgs = self.callPackage ./pilz-msgs {};

 pilz-robot-programming = self.callPackage ./pilz-robot-programming {};

 pilz-robots = self.callPackage ./pilz-robots {};

 pilz-status-indicator-rqt = self.callPackage ./pilz-status-indicator-rqt {};

 pilz-testutils = self.callPackage ./pilz-testutils {};

 pilz-utils = self.callPackage ./pilz-utils {};

 pincher-arm = self.callPackage ./pincher-arm {};

 pincher-arm-bringup = self.callPackage ./pincher-arm-bringup {};

 pincher-arm-description = self.callPackage ./pincher-arm-description {};

 pincher-arm-ikfast-plugin = self.callPackage ./pincher-arm-ikfast-plugin {};

 pincher-arm-moveit-config = self.callPackage ./pincher-arm-moveit-config {};

 pincher-arm-moveit-demos = self.callPackage ./pincher-arm-moveit-demos {};

 pinocchio = self.callPackage ./pinocchio {};

 planner-cspace = self.callPackage ./planner-cspace {};

 planner-cspace-msgs = self.callPackage ./planner-cspace-msgs {};

 plotjuggler = self.callPackage ./plotjuggler {};

 plotjuggler-msgs = self.callPackage ./plotjuggler-msgs {};

 plotjuggler-ros = self.callPackage ./plotjuggler-ros {};

 pluginlib = self.callPackage ./pluginlib {};

 pluginlib-tutorials = self.callPackage ./pluginlib-tutorials {};

 point-cloud2-filters = self.callPackage ./point-cloud2-filters {};

 point-cloud-color = self.callPackage ./point-cloud-color {};

 point-cloud-transport-plugins = self.callPackage ./point-cloud-transport-plugins {};

 pointcloud-to-laserscan = self.callPackage ./pointcloud-to-laserscan {};

 pointgrey-camera-description = self.callPackage ./pointgrey-camera-description {};

 pointgrey-camera-driver = self.callPackage ./pointgrey-camera-driver {};

 points-preprocessor = self.callPackage ./points-preprocessor {};

 polar-scan-matcher = self.callPackage ./polar-scan-matcher {};

 polled-camera = self.callPackage ./polled-camera {};

 pose-base-controller = self.callPackage ./pose-base-controller {};

 pose-cov-ops = self.callPackage ./pose-cov-ops {};

 pose-follower = self.callPackage ./pose-follower {};

 posedetection-msgs = self.callPackage ./posedetection-msgs {};

 position-controllers = self.callPackage ./position-controllers {};

 power-monitor = self.callPackage ./power-monitor {};

 power-msgs = self.callPackage ./power-msgs {};

 pr2-app-manager = self.callPackage ./pr2-app-manager {};

 pr2-arm-kinematics = self.callPackage ./pr2-arm-kinematics {};

 pr2-arm-move-ik = self.callPackage ./pr2-arm-move-ik {};

 pr2-bringup = self.callPackage ./pr2-bringup {};

 pr2-bringup-tests = self.callPackage ./pr2-bringup-tests {};

 pr2-calibration-controllers = self.callPackage ./pr2-calibration-controllers {};

 pr2-camera-synchronizer = self.callPackage ./pr2-camera-synchronizer {};

 pr2-common = self.callPackage ./pr2-common {};

 pr2-common-action-msgs = self.callPackage ./pr2-common-action-msgs {};

 pr2-common-actions = self.callPackage ./pr2-common-actions {};

 pr2-computer-monitor = self.callPackage ./pr2-computer-monitor {};

 pr2-controller-configuration = self.callPackage ./pr2-controller-configuration {};

 pr2-controller-configuration-gazebo = self.callPackage ./pr2-controller-configuration-gazebo {};

 pr2-controller-interface = self.callPackage ./pr2-controller-interface {};

 pr2-controller-manager = self.callPackage ./pr2-controller-manager {};

 pr2-controllers = self.callPackage ./pr2-controllers {};

 pr2-controllers-msgs = self.callPackage ./pr2-controllers-msgs {};

 pr2-counterbalance-check = self.callPackage ./pr2-counterbalance-check {};

 pr2-dashboard-aggregator = self.callPackage ./pr2-dashboard-aggregator {};

 pr2-description = self.callPackage ./pr2-description {};

 pr2-ethercat = self.callPackage ./pr2-ethercat {};

 pr2-ethercat-drivers = self.callPackage ./pr2-ethercat-drivers {};

 pr2-gazebo = self.callPackage ./pr2-gazebo {};

 pr2-gazebo-plugins = self.callPackage ./pr2-gazebo-plugins {};

 pr2-gripper-action = self.callPackage ./pr2-gripper-action {};

 pr2-gripper-sensor = self.callPackage ./pr2-gripper-sensor {};

 pr2-gripper-sensor-action = self.callPackage ./pr2-gripper-sensor-action {};

 pr2-gripper-sensor-controller = self.callPackage ./pr2-gripper-sensor-controller {};

 pr2-gripper-sensor-msgs = self.callPackage ./pr2-gripper-sensor-msgs {};

 pr2-hardware-interface = self.callPackage ./pr2-hardware-interface {};

 pr2-head-action = self.callPackage ./pr2-head-action {};

 pr2-kinematics = self.callPackage ./pr2-kinematics {};

 pr2-machine = self.callPackage ./pr2-machine {};

 pr2-mannequin-mode = self.callPackage ./pr2-mannequin-mode {};

 pr2-mechanism = self.callPackage ./pr2-mechanism {};

 pr2-mechanism-controllers = self.callPackage ./pr2-mechanism-controllers {};

 pr2-mechanism-diagnostics = self.callPackage ./pr2-mechanism-diagnostics {};

 pr2-mechanism-model = self.callPackage ./pr2-mechanism-model {};

 pr2-mechanism-msgs = self.callPackage ./pr2-mechanism-msgs {};

 pr2-motor-diagnostic-tool = self.callPackage ./pr2-motor-diagnostic-tool {};

 pr2-move-base = self.callPackage ./pr2-move-base {};

 pr2-msgs = self.callPackage ./pr2-msgs {};

 pr2-navigation = self.callPackage ./pr2-navigation {};

 pr2-navigation-config = self.callPackage ./pr2-navigation-config {};

 pr2-navigation-global = self.callPackage ./pr2-navigation-global {};

 pr2-navigation-local = self.callPackage ./pr2-navigation-local {};

 pr2-navigation-perception = self.callPackage ./pr2-navigation-perception {};

 pr2-navigation-self-filter = self.callPackage ./pr2-navigation-self-filter {};

 pr2-navigation-slam = self.callPackage ./pr2-navigation-slam {};

 pr2-navigation-teleop = self.callPackage ./pr2-navigation-teleop {};

 pr2-position-scripts = self.callPackage ./pr2-position-scripts {};

 pr2-power-board = self.callPackage ./pr2-power-board {};

 pr2-power-drivers = self.callPackage ./pr2-power-drivers {};

 pr2-robot = self.callPackage ./pr2-robot {};

 pr2-run-stop-auto-restart = self.callPackage ./pr2-run-stop-auto-restart {};

 pr2-self-test = self.callPackage ./pr2-self-test {};

 pr2-self-test-msgs = self.callPackage ./pr2-self-test-msgs {};

 pr2-simulator = self.callPackage ./pr2-simulator {};

 pr2-teleop = self.callPackage ./pr2-teleop {};

 pr2-tilt-laser-interface = self.callPackage ./pr2-tilt-laser-interface {};

 pr2-tuck-arms-action = self.callPackage ./pr2-tuck-arms-action {};

 pr2-tuckarm = self.callPackage ./pr2-tuckarm {};

 pr2eus = self.callPackage ./pr2eus {};

 pr2eus-moveit = self.callPackage ./pr2eus-moveit {};

 prbt-gazebo = self.callPackage ./prbt-gazebo {};

 prbt-grippers = self.callPackage ./prbt-grippers {};

 prbt-hardware-support = self.callPackage ./prbt-hardware-support {};

 prbt-ikfast-manipulator-plugin = self.callPackage ./prbt-ikfast-manipulator-plugin {};

 prbt-moveit-config = self.callPackage ./prbt-moveit-config {};

 prbt-pg70-support = self.callPackage ./prbt-pg70-support {};

 prbt-support = self.callPackage ./prbt-support {};

 prosilica-camera = self.callPackage ./prosilica-camera {};

 prosilica-gige-sdk = self.callPackage ./prosilica-gige-sdk {};

 psen-scan-v2 = self.callPackage ./psen-scan-v2 {};

 py-trees = self.callPackage ./py-trees {};

 py-trees-msgs = self.callPackage ./py-trees-msgs {};

 py-trees-ros = self.callPackage ./py-trees-ros {};

 pybind11-catkin = self.callPackage ./pybind11-catkin {};

 pyhri = self.callPackage ./pyhri {};

 pyquaternion = self.callPackage ./pyquaternion {};

 python-qt-binding = self.callPackage ./python-qt-binding {};

 qb-chain-control = self.callPackage ./qb-chain-control {};

 qb-chain-description = self.callPackage ./qb-chain-description {};

 qb-chain-msgs = self.callPackage ./qb-chain-msgs {};

 qb-device = self.callPackage ./qb-device {};

 qb-device-bringup = self.callPackage ./qb-device-bringup {};

 qb-device-control = self.callPackage ./qb-device-control {};

 qb-device-description = self.callPackage ./qb-device-description {};

 qb-device-driver = self.callPackage ./qb-device-driver {};

 qb-device-gazebo = self.callPackage ./qb-device-gazebo {};

 qb-device-hardware-interface = self.callPackage ./qb-device-hardware-interface {};

 qb-device-msgs = self.callPackage ./qb-device-msgs {};

 qb-device-srvs = self.callPackage ./qb-device-srvs {};

 qb-device-utils = self.callPackage ./qb-device-utils {};

 qb-hand = self.callPackage ./qb-hand {};

 qb-hand-control = self.callPackage ./qb-hand-control {};

 qb-hand-description = self.callPackage ./qb-hand-description {};

 qb-hand-gazebo = self.callPackage ./qb-hand-gazebo {};

 qb-hand-hardware-interface = self.callPackage ./qb-hand-hardware-interface {};

 qb-move = self.callPackage ./qb-move {};

 qb-move-control = self.callPackage ./qb-move-control {};

 qb-move-description = self.callPackage ./qb-move-description {};

 qb-move-gazebo = self.callPackage ./qb-move-gazebo {};

 qb-move-hardware-interface = self.callPackage ./qb-move-hardware-interface {};

 qb-softhand-industry = self.callPackage ./qb-softhand-industry {};

 qb-softhand-industry-bringup = self.callPackage ./qb-softhand-industry-bringup {};

 qb-softhand-industry-control = self.callPackage ./qb-softhand-industry-control {};

 qb-softhand-industry-description = self.callPackage ./qb-softhand-industry-description {};

 qb-softhand-industry-driver = self.callPackage ./qb-softhand-industry-driver {};

 qb-softhand-industry-hardware-interface = self.callPackage ./qb-softhand-industry-hardware-interface {};

 qb-softhand-industry-msgs = self.callPackage ./qb-softhand-industry-msgs {};

 qb-softhand-industry-srvs = self.callPackage ./qb-softhand-industry-srvs {};

 qb-softhand-industry-utils = self.callPackage ./qb-softhand-industry-utils {};

 qpoases-vendor = self.callPackage ./qpoases-vendor {};

 qt-dotgraph = self.callPackage ./qt-dotgraph {};

 qt-gui = self.callPackage ./qt-gui {};

 qt-gui-app = self.callPackage ./qt-gui-app {};

 qt-gui-core = self.callPackage ./qt-gui-core {};

 qt-gui-cpp = self.callPackage ./qt-gui-cpp {};

 qt-gui-py-common = self.callPackage ./qt-gui-py-common {};

 quanergy-client = self.callPackage ./quanergy-client {};

 quanergy-client-ros = self.callPackage ./quanergy-client-ros {};

 qwt-dependency = self.callPackage ./qwt-dependency {};

 radar-msgs = self.callPackage ./radar-msgs {};

 random-numbers = self.callPackage ./random-numbers {};

 raw-description = self.callPackage ./raw-description {};

 razor-imu-9dof = self.callPackage ./razor-imu-9dof {};

 rc-common-msgs = self.callPackage ./rc-common-msgs {};

 rc-dynamics-api = self.callPackage ./rc-dynamics-api {};

 rc-genicam-api = self.callPackage ./rc-genicam-api {};

 rc-genicam-camera = self.callPackage ./rc-genicam-camera {};

 rc-genicam-driver = self.callPackage ./rc-genicam-driver {};

 rc-hand-eye-calibration-client = self.callPackage ./rc-hand-eye-calibration-client {};

 rc-pick-client = self.callPackage ./rc-pick-client {};

 rc-reason-clients = self.callPackage ./rc-reason-clients {};

 rc-reason-msgs = self.callPackage ./rc-reason-msgs {};

 rc-silhouettematch-client = self.callPackage ./rc-silhouettematch-client {};

 rc-tagdetect-client = self.callPackage ./rc-tagdetect-client {};

 rc-visard = self.callPackage ./rc-visard {};

 rc-visard-description = self.callPackage ./rc-visard-description {};

 rc-visard-driver = self.callPackage ./rc-visard-driver {};

 rcdiscover = self.callPackage ./rcdiscover {};

 reach = self.callPackage ./reach {};

 reach-ros = self.callPackage ./reach-ros {};

 realsense2-camera = self.callPackage ./realsense2-camera {};

 realsense2-description = self.callPackage ./realsense2-description {};

 realtime-tools = self.callPackage ./realtime-tools {};

 remote-rosbag-record = self.callPackage ./remote-rosbag-record {};

 resized-image-transport = self.callPackage ./resized-image-transport {};

 resource-retriever = self.callPackage ./resource-retriever {};

 respeaker-ros = self.callPackage ./respeaker-ros {};

 rgbd-launch = self.callPackage ./rgbd-launch {};

 ridgeback-control = self.callPackage ./ridgeback-control {};

 ridgeback-description = self.callPackage ./ridgeback-description {};

 ridgeback-desktop = self.callPackage ./ridgeback-desktop {};

 ridgeback-gazebo = self.callPackage ./ridgeback-gazebo {};

 ridgeback-gazebo-plugins = self.callPackage ./ridgeback-gazebo-plugins {};

 ridgeback-msgs = self.callPackage ./ridgeback-msgs {};

 ridgeback-navigation = self.callPackage ./ridgeback-navigation {};

 ridgeback-simulator = self.callPackage ./ridgeback-simulator {};

 ridgeback-viz = self.callPackage ./ridgeback-viz {};

 rm-calibration-controllers = self.callPackage ./rm-calibration-controllers {};

 rm-common = self.callPackage ./rm-common {};

 rm-control = self.callPackage ./rm-control {};

 rm-dbus = self.callPackage ./rm-dbus {};

 rm-description = self.callPackage ./rm-description {};

 rm-gazebo = self.callPackage ./rm-gazebo {};

 rm-gimbal-controllers = self.callPackage ./rm-gimbal-controllers {};

 rm-hw = self.callPackage ./rm-hw {};

 rm-msgs = self.callPackage ./rm-msgs {};

 rm-orientation-controller = self.callPackage ./rm-orientation-controller {};

 rm-referee = self.callPackage ./rm-referee {};

 rm-shooter-controllers = self.callPackage ./rm-shooter-controllers {};

 robot = self.callPackage ./robot {};

 robot-body-filter = self.callPackage ./robot-body-filter {};

 robot-calibration = self.callPackage ./robot-calibration {};

 robot-calibration-msgs = self.callPackage ./robot-calibration-msgs {};

 robot-controllers = self.callPackage ./robot-controllers {};

 robot-controllers-interface = self.callPackage ./robot-controllers-interface {};

 robot-controllers-msgs = self.callPackage ./robot-controllers-msgs {};

 robot-localization = self.callPackage ./robot-localization {};

 robot-mechanism-controllers = self.callPackage ./robot-mechanism-controllers {};

 robot-nav-rviz-plugins = self.callPackage ./robot-nav-rviz-plugins {};

 robot-nav-tools = self.callPackage ./robot-nav-tools {};

 robot-nav-viz-demos = self.callPackage ./robot-nav-viz-demos {};

 robot-navigation = self.callPackage ./robot-navigation {};

 robot-self-filter = self.callPackage ./robot-self-filter {};

 robot-state-controller = self.callPackage ./robot-state-controller {};

 robot-state-publisher = self.callPackage ./robot-state-publisher {};

 robot-upstart = self.callPackage ./robot-upstart {};

 roboticsgroup-upatras-gazebo-plugins = self.callPackage ./roboticsgroup-upatras-gazebo-plugins {};

 robotis-manipulator = self.callPackage ./robotis-manipulator {};

 robotont-description = self.callPackage ./robotont-description {};

 robotont-gazebo = self.callPackage ./robotont-gazebo {};

 robotont-msgs = self.callPackage ./robotont-msgs {};

 robotont-nuc-description = self.callPackage ./robotont-nuc-description {};

 robotraconteur = self.callPackage ./robotraconteur {};

 rokubimini = self.callPackage ./rokubimini {};

 rokubimini-bus-manager = self.callPackage ./rokubimini-bus-manager {};

 rokubimini-description = self.callPackage ./rokubimini-description {};

 rokubimini-ethercat = self.callPackage ./rokubimini-ethercat {};

 rokubimini-msgs = self.callPackage ./rokubimini-msgs {};

 rokubimini-serial = self.callPackage ./rokubimini-serial {};

 ros = self.callPackage ./ros {};

 ros-babel-fish = self.callPackage ./ros-babel-fish {};

 ros-babel-fish-test-msgs = self.callPackage ./ros-babel-fish-test-msgs {};

 ros-base = self.callPackage ./ros-base {};

 ros-canopen = self.callPackage ./ros-canopen {};

 ros-comm = self.callPackage ./ros-comm {};

 ros-control = self.callPackage ./ros-control {};

 ros-control-boilerplate = self.callPackage ./ros-control-boilerplate {};

 ros-controllers = self.callPackage ./ros-controllers {};

 ros-controllers-cartesian = self.callPackage ./ros-controllers-cartesian {};

 ros-core = self.callPackage ./ros-core {};

 ros-emacs-utils = self.callPackage ./ros-emacs-utils {};

 ros-environment = self.callPackage ./ros-environment {};

 ros-ethercat-eml = self.callPackage ./ros-ethercat-eml {};

 ros-google-cloud-language = self.callPackage ./ros-google-cloud-language {};

 ros-ign = self.callPackage ./ros-ign {};

 ros-ign-bridge = self.callPackage ./ros-ign-bridge {};

 ros-ign-image = self.callPackage ./ros-ign-image {};

 ros-industrial-cmake-boilerplate = self.callPackage ./ros-industrial-cmake-boilerplate {};

 ros-introspection = self.callPackage ./ros-introspection {};

 ros-numpy = self.callPackage ./ros-numpy {};

 ros-pytest = self.callPackage ./ros-pytest {};

 ros-realtime = self.callPackage ./ros-realtime {};

 ros-tutorials = self.callPackage ./ros-tutorials {};

 ros-type-introspection = self.callPackage ./ros-type-introspection {};

 rosapi = self.callPackage ./rosapi {};

 rosatomic = self.callPackage ./rosatomic {};

 rosauth = self.callPackage ./rosauth {};

 rosbag = self.callPackage ./rosbag {};

 rosbag-fancy = self.callPackage ./rosbag-fancy {};

 rosbag-fancy-msgs = self.callPackage ./rosbag-fancy-msgs {};

 rosbag-migration-rule = self.callPackage ./rosbag-migration-rule {};

 rosbag-pandas = self.callPackage ./rosbag-pandas {};

 rosbag-snapshot = self.callPackage ./rosbag-snapshot {};

 rosbag-snapshot-msgs = self.callPackage ./rosbag-snapshot-msgs {};

 rosbag-storage = self.callPackage ./rosbag-storage {};

 rosbaglive = self.callPackage ./rosbaglive {};

 rosbash = self.callPackage ./rosbash {};

 rosbash-params = self.callPackage ./rosbash-params {};

 rosboost-cfg = self.callPackage ./rosboost-cfg {};

 rosbridge-library = self.callPackage ./rosbridge-library {};

 rosbridge-msgs = self.callPackage ./rosbridge-msgs {};

 rosbridge-server = self.callPackage ./rosbridge-server {};

 rosbridge-suite = self.callPackage ./rosbridge-suite {};

 rosbuild = self.callPackage ./rosbuild {};

 rosclean = self.callPackage ./rosclean {};

 roscompile = self.callPackage ./roscompile {};

 rosconsole = self.callPackage ./rosconsole {};

 rosconsole-bridge = self.callPackage ./rosconsole-bridge {};

 roscpp = self.callPackage ./roscpp {};

 roscpp-core = self.callPackage ./roscpp-core {};

 roscpp-serialization = self.callPackage ./roscpp-serialization {};

 roscpp-traits = self.callPackage ./roscpp-traits {};

 roscpp-tutorials = self.callPackage ./roscpp-tutorials {};

 roscreate = self.callPackage ./roscreate {};

 rosdiagnostic = self.callPackage ./rosdiagnostic {};

 rosdoc-lite = self.callPackage ./rosdoc-lite {};

 rosee-msg = self.callPackage ./rosee-msg {};

 rosemacs = self.callPackage ./rosemacs {};

 roseus = self.callPackage ./roseus {};

 roseus-smach = self.callPackage ./roseus-smach {};

 roseus-tutorials = self.callPackage ./roseus-tutorials {};

 rosfmt = self.callPackage ./rosfmt {};

 rosgraph = self.callPackage ./rosgraph {};

 rosgraph-msgs = self.callPackage ./rosgraph-msgs {};

 roslang = self.callPackage ./roslang {};

 roslaunch = self.callPackage ./roslaunch {};

 roslib = self.callPackage ./roslib {};

 roslint = self.callPackage ./roslint {};

 roslisp = self.callPackage ./roslisp {};

 roslisp-common = self.callPackage ./roslisp-common {};

 roslisp-repl = self.callPackage ./roslisp-repl {};

 roslisp-utilities = self.callPackage ./roslisp-utilities {};

 roslz4 = self.callPackage ./roslz4 {};

 rosmake = self.callPackage ./rosmake {};

 rosmaster = self.callPackage ./rosmaster {};

 rosmon = self.callPackage ./rosmon {};

 rosmon-core = self.callPackage ./rosmon-core {};

 rosmon-msgs = self.callPackage ./rosmon-msgs {};

 rosmsg = self.callPackage ./rosmsg {};

 rosmsg-cpp = self.callPackage ./rosmsg-cpp {};

 rosnode = self.callPackage ./rosnode {};

 rosout = self.callPackage ./rosout {};

 rospack = self.callPackage ./rospack {};

 rosparam = self.callPackage ./rosparam {};

 rosparam-shortcuts = self.callPackage ./rosparam-shortcuts {};

 rospatlite = self.callPackage ./rospatlite {};

 rospilot = self.callPackage ./rospilot {};

 rosping = self.callPackage ./rosping {};

 rospy = self.callPackage ./rospy {};

 rospy-message-converter = self.callPackage ./rospy-message-converter {};

 rospy-tutorials = self.callPackage ./rospy-tutorials {};

 rosrt = self.callPackage ./rosrt {};

 rosserial = self.callPackage ./rosserial {};

 rosserial-arduino = self.callPackage ./rosserial-arduino {};

 rosserial-chibios = self.callPackage ./rosserial-chibios {};

 rosserial-client = self.callPackage ./rosserial-client {};

 rosserial-embeddedlinux = self.callPackage ./rosserial-embeddedlinux {};

 rosserial-mbed = self.callPackage ./rosserial-mbed {};

 rosserial-msgs = self.callPackage ./rosserial-msgs {};

 rosserial-python = self.callPackage ./rosserial-python {};

 rosserial-server = self.callPackage ./rosserial-server {};

 rosserial-tivac = self.callPackage ./rosserial-tivac {};

 rosserial-vex-cortex = self.callPackage ./rosserial-vex-cortex {};

 rosserial-vex-v5 = self.callPackage ./rosserial-vex-v5 {};

 rosserial-windows = self.callPackage ./rosserial-windows {};

 rosserial-xbee = self.callPackage ./rosserial-xbee {};

 rosservice = self.callPackage ./rosservice {};

 rostest = self.callPackage ./rostest {};

 rostime = self.callPackage ./rostime {};

 rostopic = self.callPackage ./rostopic {};

 rostwitter = self.callPackage ./rostwitter {};

 rosunit = self.callPackage ./rosunit {};

 roswtf = self.callPackage ./roswtf {};

 roswww = self.callPackage ./roswww {};

 rotate-recovery = self.callPackage ./rotate-recovery {};

 route-network = self.callPackage ./route-network {};

 rplidar-ros = self.callPackage ./rplidar-ros {};

 rqt = self.callPackage ./rqt {};

 rqt-action = self.callPackage ./rqt-action {};

 rqt-bag = self.callPackage ./rqt-bag {};

 rqt-bag-plugins = self.callPackage ./rqt-bag-plugins {};

 rqt-common-plugins = self.callPackage ./rqt-common-plugins {};

 rqt-console = self.callPackage ./rqt-console {};

 rqt-controller-manager = self.callPackage ./rqt-controller-manager {};

 rqt-dep = self.callPackage ./rqt-dep {};

 rqt-drone-teleop = self.callPackage ./rqt-drone-teleop {};

 rqt-ez-publisher = self.callPackage ./rqt-ez-publisher {};

 rqt-graph = self.callPackage ./rqt-graph {};

 rqt-ground-robot-teleop = self.callPackage ./rqt-ground-robot-teleop {};

 rqt-gui = self.callPackage ./rqt-gui {};

 rqt-gui-cpp = self.callPackage ./rqt-gui-cpp {};

 rqt-gui-py = self.callPackage ./rqt-gui-py {};

 rqt-human-radar = self.callPackage ./rqt-human-radar {};

 rqt-image-view = self.callPackage ./rqt-image-view {};

 rqt-joint-trajectory-controller = self.callPackage ./rqt-joint-trajectory-controller {};

 rqt-launch = self.callPackage ./rqt-launch {};

 rqt-logger-level = self.callPackage ./rqt-logger-level {};

 rqt-moveit = self.callPackage ./rqt-moveit {};

 rqt-msg = self.callPackage ./rqt-msg {};

 rqt-multiplot = self.callPackage ./rqt-multiplot {};

 rqt-nav-view = self.callPackage ./rqt-nav-view {};

 rqt-plot = self.callPackage ./rqt-plot {};

 rqt-pose-view = self.callPackage ./rqt-pose-view {};

 rqt-pr2-dashboard = self.callPackage ./rqt-pr2-dashboard {};

 rqt-publisher = self.callPackage ./rqt-publisher {};

 rqt-py-common = self.callPackage ./rqt-py-common {};

 rqt-py-console = self.callPackage ./rqt-py-console {};

 rqt-py-trees = self.callPackage ./rqt-py-trees {};

 rqt-reconfigure = self.callPackage ./rqt-reconfigure {};

 rqt-robot-dashboard = self.callPackage ./rqt-robot-dashboard {};

 rqt-robot-monitor = self.callPackage ./rqt-robot-monitor {};

 rqt-robot-plugins = self.callPackage ./rqt-robot-plugins {};

 rqt-robot-steering = self.callPackage ./rqt-robot-steering {};

 rqt-rosbag-fancy = self.callPackage ./rqt-rosbag-fancy {};

 rqt-rosmon = self.callPackage ./rqt-rosmon {};

 rqt-runtime-monitor = self.callPackage ./rqt-runtime-monitor {};

 rqt-rviz = self.callPackage ./rqt-rviz {};

 rqt-service-caller = self.callPackage ./rqt-service-caller {};

 rqt-shell = self.callPackage ./rqt-shell {};

 rqt-srv = self.callPackage ./rqt-srv {};

 rqt-tf-tree = self.callPackage ./rqt-tf-tree {};

 rqt-top = self.callPackage ./rqt-top {};

 rqt-topic = self.callPackage ./rqt-topic {};

 rqt-web = self.callPackage ./rqt-web {};

 rslidar-sdk = self.callPackage ./rslidar-sdk {};

 rt-usb-9axisimu-driver = self.callPackage ./rt-usb-9axisimu-driver {};

 rtabmap-conversions = self.callPackage ./rtabmap-conversions {};

 rtabmap-costmap-plugins = self.callPackage ./rtabmap-costmap-plugins {};

 rtabmap-demos = self.callPackage ./rtabmap-demos {};

 rtabmap-examples = self.callPackage ./rtabmap-examples {};

 rtabmap-launch = self.callPackage ./rtabmap-launch {};

 rtabmap-legacy = self.callPackage ./rtabmap-legacy {};

 rtabmap-msgs = self.callPackage ./rtabmap-msgs {};

 rtabmap-odom = self.callPackage ./rtabmap-odom {};

 rtabmap-python = self.callPackage ./rtabmap-python {};

 rtabmap-ros = self.callPackage ./rtabmap-ros {};

 rtabmap-rviz-plugins = self.callPackage ./rtabmap-rviz-plugins {};

 rtabmap-slam = self.callPackage ./rtabmap-slam {};

 rtabmap-sync = self.callPackage ./rtabmap-sync {};

 rtabmap-util = self.callPackage ./rtabmap-util {};

 rtabmap-viz = self.callPackage ./rtabmap-viz {};

 rtcm-msgs = self.callPackage ./rtcm-msgs {};

 ruckig = self.callPackage ./ruckig {};

 rviz = self.callPackage ./rviz {};

 rviz-animated-view-controller = self.callPackage ./rviz-animated-view-controller {};

 rviz-imu-plugin = self.callPackage ./rviz-imu-plugin {};

 rviz-marker-tools = self.callPackage ./rviz-marker-tools {};

 rviz-plugin-tutorials = self.callPackage ./rviz-plugin-tutorials {};

 rviz-python-tutorial = self.callPackage ./rviz-python-tutorial {};

 rviz-robot-description-topic = self.callPackage ./rviz-robot-description-topic {};

 rviz-satellite = self.callPackage ./rviz-satellite {};

 rviz-tool-cursor = self.callPackage ./rviz-tool-cursor {};

 rviz-tool-path-display = self.callPackage ./rviz-tool-path-display {};

 rviz-visual-tools = self.callPackage ./rviz-visual-tools {};

 rwt-app-chooser = self.callPackage ./rwt-app-chooser {};

 rwt-image-view = self.callPackage ./rwt-image-view {};

 rwt-nav = self.callPackage ./rwt-nav {};

 rwt-plot = self.callPackage ./rwt-plot {};

 rwt-robot-monitor = self.callPackage ./rwt-robot-monitor {};

 rwt-speech-recognition = self.callPackage ./rwt-speech-recognition {};

 rwt-steer = self.callPackage ./rwt-steer {};

 rwt-utils-3rdparty = self.callPackage ./rwt-utils-3rdparty {};

 rx-service-tools = self.callPackage ./rx-service-tools {};

 safety-limiter = self.callPackage ./safety-limiter {};

 safety-limiter-msgs = self.callPackage ./safety-limiter-msgs {};

 sainsmart-relay-usb = self.callPackage ./sainsmart-relay-usb {};

 sbg-driver = self.callPackage ./sbg-driver {};

 sbpl = self.callPackage ./sbpl {};

 sbpl-lattice-planner = self.callPackage ./sbpl-lattice-planner {};

 sbpl-recovery = self.callPackage ./sbpl-recovery {};

 scaled-controllers = self.callPackage ./scaled-controllers {};

 scaled-joint-trajectory-controller = self.callPackage ./scaled-joint-trajectory-controller {};

 scan-to-cloud-converter = self.callPackage ./scan-to-cloud-converter {};

 scan-tools = self.callPackage ./scan-tools {};

 scenario-test-tools = self.callPackage ./scenario-test-tools {};

 schunk-description = self.callPackage ./schunk-description {};

 schunk-libm5api = self.callPackage ./schunk-libm5api {};

 schunk-modular-robotics = self.callPackage ./schunk-modular-robotics {};

 schunk-powercube-chain = self.callPackage ./schunk-powercube-chain {};

 schunk-sdh = self.callPackage ./schunk-sdh {};

 schunk-simulated-tactile-sensors = self.callPackage ./schunk-simulated-tactile-sensors {};

 schunk-svh = self.callPackage ./schunk-svh {};

 schunk-svh-description = self.callPackage ./schunk-svh-description {};

 schunk-svh-driver = self.callPackage ./schunk-svh-driver {};

 schunk-svh-library = self.callPackage ./schunk-svh-library {};

 schunk-svh-msgs = self.callPackage ./schunk-svh-msgs {};

 schunk-svh-simulation = self.callPackage ./schunk-svh-simulation {};

 sdc21x0 = self.callPackage ./sdc21x0 {};

 sdhlibrary-cpp = self.callPackage ./sdhlibrary-cpp {};

 self-test = self.callPackage ./self-test {};

 semantic-point-annotator = self.callPackage ./semantic-point-annotator {};

 sensor-msgs = self.callPackage ./sensor-msgs {};

 septentrio-gnss-driver = self.callPackage ./septentrio-gnss-driver {};

 serial = self.callPackage ./serial {};

 service-tools = self.callPackage ./service-tools {};

 sesame-ros = self.callPackage ./sesame-ros {};

 settlerlib = self.callPackage ./settlerlib {};

 shape-msgs = self.callPackage ./shape-msgs {};

 sick-safetyscanners = self.callPackage ./sick-safetyscanners {};

 sick-safevisionary-base = self.callPackage ./sick-safevisionary-base {};

 sick-safevisionary-driver = self.callPackage ./sick-safevisionary-driver {};

 sick-safevisionary-msgs = self.callPackage ./sick-safevisionary-msgs {};

 sick-scan = self.callPackage ./sick-scan {};

 sick-scan-xd = self.callPackage ./sick-scan-xd {};

 sick-tim = self.callPackage ./sick-tim {};

 simple-grasping = self.callPackage ./simple-grasping {};

 simple-message = self.callPackage ./simple-message {};

 simulators = self.callPackage ./simulators {};

 single-joint-position-action = self.callPackage ./single-joint-position-action {};

 skyway = self.callPackage ./skyway {};

 slam-gmapping = self.callPackage ./slam-gmapping {};

 slam-karto = self.callPackage ./slam-karto {};

 slam-toolbox = self.callPackage ./slam-toolbox {};

 slam-toolbox-msgs = self.callPackage ./slam-toolbox-msgs {};

 slam-toolbox-rviz = self.callPackage ./slam-toolbox-rviz {};

 slic = self.callPackage ./slic {};

 slider-publisher = self.callPackage ./slider-publisher {};

 slime-ros = self.callPackage ./slime-ros {};

 slime-wrapper = self.callPackage ./slime-wrapper {};

 smacc = self.callPackage ./smacc {};

 smacc-msgs = self.callPackage ./smacc-msgs {};

 smach = self.callPackage ./smach {};

 smach-msgs = self.callPackage ./smach-msgs {};

 smach-ros = self.callPackage ./smach-ros {};

 smach-viewer = self.callPackage ./smach-viewer {};

 smclib = self.callPackage ./smclib {};

 snmp-ros = self.callPackage ./snmp-ros {};

 snowbot-operating-system = self.callPackage ./snowbot-operating-system {};

 sob-layer = self.callPackage ./sob-layer {};

 socketcan-bridge = self.callPackage ./socketcan-bridge {};

 socketcan-interface = self.callPackage ./socketcan-interface {};

 soem = self.callPackage ./soem {};

 sophus = self.callPackage ./sophus {};

 sot-core = self.callPackage ./sot-core {};

 sot-dynamic-pinocchio = self.callPackage ./sot-dynamic-pinocchio {};

 sot-tools = self.callPackage ./sot-tools {};

 sound-classification = self.callPackage ./sound-classification {};

 spacenav-node = self.callPackage ./spacenav-node {};

 sparse-bundle-adjustment = self.callPackage ./sparse-bundle-adjustment {};

 spatio-temporal-voxel-layer = self.callPackage ./spatio-temporal-voxel-layer {};

 speech-recognition-msgs = self.callPackage ./speech-recognition-msgs {};

 speed-scaling-interface = self.callPackage ./speed-scaling-interface {};

 speed-scaling-state-controller = self.callPackage ./speed-scaling-state-controller {};

 spinnaker-camera-driver = self.callPackage ./spinnaker-camera-driver {};

 sr-hand-detector = self.callPackage ./sr-hand-detector {};

 srdfdom = self.callPackage ./srdfdom {};

 stag-ros = self.callPackage ./stag-ros {};

 stage = self.callPackage ./stage {};

 stage-ros = self.callPackage ./stage-ros {};

 static-transform-mux = self.callPackage ./static-transform-mux {};

 statistics-msgs = self.callPackage ./statistics-msgs {};

 std-msgs = self.callPackage ./std-msgs {};

 std-srvs = self.callPackage ./std-srvs {};

 steering-functions = self.callPackage ./steering-functions {};

 stereo-image-proc = self.callPackage ./stereo-image-proc {};

 stereo-msgs = self.callPackage ./stereo-msgs {};

 switchbot-ros = self.callPackage ./switchbot-ros {};

 swri-cli-tools = self.callPackage ./swri-cli-tools {};

 swri-console = self.callPackage ./swri-console {};

 swri-console-util = self.callPackage ./swri-console-util {};

 swri-dbw-interface = self.callPackage ./swri-dbw-interface {};

 swri-geometry-util = self.callPackage ./swri-geometry-util {};

 swri-image-util = self.callPackage ./swri-image-util {};

 swri-math-util = self.callPackage ./swri-math-util {};

 swri-nodelet = self.callPackage ./swri-nodelet {};

 swri-opencv-util = self.callPackage ./swri-opencv-util {};

 swri-prefix-tools = self.callPackage ./swri-prefix-tools {};

 swri-profiler = self.callPackage ./swri-profiler {};

 swri-profiler-msgs = self.callPackage ./swri-profiler-msgs {};

 swri-profiler-tools = self.callPackage ./swri-profiler-tools {};

 swri-roscpp = self.callPackage ./swri-roscpp {};

 swri-rospy = self.callPackage ./swri-rospy {};

 swri-route-util = self.callPackage ./swri-route-util {};

 swri-serial-util = self.callPackage ./swri-serial-util {};

 swri-string-util = self.callPackage ./swri-string-util {};

 swri-system-util = self.callPackage ./swri-system-util {};

 swri-transform-util = self.callPackage ./swri-transform-util {};

 swri-yaml-util = self.callPackage ./swri-yaml-util {};

 system-fingerprint = self.callPackage ./system-fingerprint {};

 tablet-socket-msgs = self.callPackage ./tablet-socket-msgs {};

 taskflow = self.callPackage ./taskflow {};

 teb-local-planner = self.callPackage ./teb-local-planner {};

 teleop-legged-robots = self.callPackage ./teleop-legged-robots {};

 teleop-tools = self.callPackage ./teleop-tools {};

 teleop-tools-msgs = self.callPackage ./teleop-tools-msgs {};

 teleop-twist-joy = self.callPackage ./teleop-twist-joy {};

 teleop-twist-keyboard = self.callPackage ./teleop-twist-keyboard {};

 tello-driver = self.callPackage ./tello-driver {};

 tesseract-collision = self.callPackage ./tesseract-collision {};

 tesseract-common = self.callPackage ./tesseract-common {};

 tesseract-environment = self.callPackage ./tesseract-environment {};

 tesseract-geometry = self.callPackage ./tesseract-geometry {};

 tesseract-kinematics = self.callPackage ./tesseract-kinematics {};

 tesseract-scene-graph = self.callPackage ./tesseract-scene-graph {};

 tesseract-srdf = self.callPackage ./tesseract-srdf {};

 tesseract-state-solver = self.callPackage ./tesseract-state-solver {};

 tesseract-support = self.callPackage ./tesseract-support {};

 tesseract-urdf = self.callPackage ./tesseract-urdf {};

 tesseract-visualization = self.callPackage ./tesseract-visualization {};

 test-diagnostic-aggregator = self.callPackage ./test-diagnostic-aggregator {};

 test-mavros = self.callPackage ./test-mavros {};

 test-osm = self.callPackage ./test-osm {};

 tf = self.callPackage ./tf {};

 tf2 = self.callPackage ./tf2 {};

 tf2-2d = self.callPackage ./tf2-2d {};

 tf2-bullet = self.callPackage ./tf2-bullet {};

 tf2-client = self.callPackage ./tf2-client {};

 tf2-eigen = self.callPackage ./tf2-eigen {};

 tf2-geometry-msgs = self.callPackage ./tf2-geometry-msgs {};

 tf2-kdl = self.callPackage ./tf2-kdl {};

 tf2-msgs = self.callPackage ./tf2-msgs {};

 tf2-py = self.callPackage ./tf2-py {};

 tf2-ros = self.callPackage ./tf2-ros {};

 tf2-sensor-msgs = self.callPackage ./tf2-sensor-msgs {};

 tf2-server = self.callPackage ./tf2-server {};

 tf2-tools = self.callPackage ./tf2-tools {};

 tf2-web-republisher = self.callPackage ./tf2-web-republisher {};

 tf-conversions = self.callPackage ./tf-conversions {};

 tf-remapper-cpp = self.callPackage ./tf-remapper-cpp {};

 theora-image-transport = self.callPackage ./theora-image-transport {};

 thunder-line-follower-pmr3100 = self.callPackage ./thunder-line-follower-pmr3100 {};

 tile-map = self.callPackage ./tile-map {};

 timestamp-tools = self.callPackage ./timestamp-tools {};

 tof-radar-controller = self.callPackage ./tof-radar-controller {};

 topic-tools = self.callPackage ./topic-tools {};

 trac-ik = self.callPackage ./trac-ik {};

 trac-ik-examples = self.callPackage ./trac-ik-examples {};

 trac-ik-kinematics-plugin = self.callPackage ./trac-ik-kinematics-plugin {};

 trac-ik-lib = self.callPackage ./trac-ik-lib {};

 trac-ik-python = self.callPackage ./trac-ik-python {};

 track-odometry = self.callPackage ./track-odometry {};

 trajectory-msgs = self.callPackage ./trajectory-msgs {};

 trajectory-tracker = self.callPackage ./trajectory-tracker {};

 trajectory-tracker-msgs = self.callPackage ./trajectory-tracker-msgs {};

 trajectory-tracker-rviz-plugins = self.callPackage ./trajectory-tracker-rviz-plugins {};

 transmission-interface = self.callPackage ./transmission-interface {};

 tsid = self.callPackage ./tsid {};

 turtle-actionlib = self.callPackage ./turtle-actionlib {};

 turtle-tf = self.callPackage ./turtle-tf {};

 turtle-tf2 = self.callPackage ./turtle-tf2 {};

 turtlebot3 = self.callPackage ./turtlebot3 {};

 turtlebot3-autorace-2020 = self.callPackage ./turtlebot3-autorace-2020 {};

 turtlebot3-autorace-camera = self.callPackage ./turtlebot3-autorace-camera {};

 turtlebot3-autorace-core = self.callPackage ./turtlebot3-autorace-core {};

 turtlebot3-autorace-detect = self.callPackage ./turtlebot3-autorace-detect {};

 turtlebot3-autorace-driving = self.callPackage ./turtlebot3-autorace-driving {};

 turtlebot3-autorace-msgs = self.callPackage ./turtlebot3-autorace-msgs {};

 turtlebot3-bringup = self.callPackage ./turtlebot3-bringup {};

 turtlebot3-description = self.callPackage ./turtlebot3-description {};

 turtlebot3-example = self.callPackage ./turtlebot3-example {};

 turtlebot3-fake = self.callPackage ./turtlebot3-fake {};

 turtlebot3-gazebo = self.callPackage ./turtlebot3-gazebo {};

 turtlebot3-msgs = self.callPackage ./turtlebot3-msgs {};

 turtlebot3-navigation = self.callPackage ./turtlebot3-navigation {};

 turtlebot3-simulations = self.callPackage ./turtlebot3-simulations {};

 turtlebot3-slam = self.callPackage ./turtlebot3-slam {};

 turtlebot3-teleop = self.callPackage ./turtlebot3-teleop {};

 turtlesim = self.callPackage ./turtlesim {};

 twist-controller = self.callPackage ./twist-controller {};

 twist-mux = self.callPackage ./twist-mux {};

 twist-mux-msgs = self.callPackage ./twist-mux-msgs {};

 twist-recovery = self.callPackage ./twist-recovery {};

 ubiquity-motor = self.callPackage ./ubiquity-motor {};

 ublox = self.callPackage ./ublox {};

 ublox-gps = self.callPackage ./ublox-gps {};

 ublox-msgs = self.callPackage ./ublox-msgs {};

 ublox-serialization = self.callPackage ./ublox-serialization {};

 ubnt-airos-tools = self.callPackage ./ubnt-airos-tools {};

 udp-com = self.callPackage ./udp-com {};

 um6 = self.callPackage ./um6 {};

 um7 = self.callPackage ./um7 {};

 unique-id = self.callPackage ./unique-id {};

 unique-identifier = self.callPackage ./unique-identifier {};

 universal-robots = self.callPackage ./universal-robots {};

 ur10-moveit-config = self.callPackage ./ur10-moveit-config {};

 ur10e-moveit-config = self.callPackage ./ur10e-moveit-config {};

 ur16e-moveit-config = self.callPackage ./ur16e-moveit-config {};

 ur3-moveit-config = self.callPackage ./ur3-moveit-config {};

 ur3e-moveit-config = self.callPackage ./ur3e-moveit-config {};

 ur5-moveit-config = self.callPackage ./ur5-moveit-config {};

 ur5e-moveit-config = self.callPackage ./ur5e-moveit-config {};

 ur-calibration = self.callPackage ./ur-calibration {};

 ur-client-library = self.callPackage ./ur-client-library {};

 ur-dashboard-msgs = self.callPackage ./ur-dashboard-msgs {};

 ur-description = self.callPackage ./ur-description {};

 ur-gazebo = self.callPackage ./ur-gazebo {};

 ur-msgs = self.callPackage ./ur-msgs {};

 ur-robot-driver = self.callPackage ./ur-robot-driver {};

 urdf = self.callPackage ./urdf {};

 urdf-geometry-parser = self.callPackage ./urdf-geometry-parser {};

 urdf-parser-plugin = self.callPackage ./urdf-parser-plugin {};

 urdf-sim-tutorial = self.callPackage ./urdf-sim-tutorial {};

 urdf-tutorial = self.callPackage ./urdf-tutorial {};

 urdfdom-py = self.callPackage ./urdfdom-py {};

 urg-c = self.callPackage ./urg-c {};

 urg-node = self.callPackage ./urg-node {};

 urg-stamped = self.callPackage ./urg-stamped {};

 usb-cam = self.callPackage ./usb-cam {};

 usb-cam-controllers = self.callPackage ./usb-cam-controllers {};

 usb-cam-hardware = self.callPackage ./usb-cam-hardware {};

 usb-cam-hardware-interface = self.callPackage ./usb-cam-hardware-interface {};

 uuid-msgs = self.callPackage ./uuid-msgs {};

 variant = self.callPackage ./variant {};

 variant-msgs = self.callPackage ./variant-msgs {};

 variant-topic-tools = self.callPackage ./variant-topic-tools {};

 vector-map-msgs = self.callPackage ./vector-map-msgs {};

 velocity-controllers = self.callPackage ./velocity-controllers {};

 velodyne = self.callPackage ./velodyne {};

 velodyne-description = self.callPackage ./velodyne-description {};

 velodyne-driver = self.callPackage ./velodyne-driver {};

 velodyne-gazebo-plugins = self.callPackage ./velodyne-gazebo-plugins {};

 velodyne-laserscan = self.callPackage ./velodyne-laserscan {};

 velodyne-msgs = self.callPackage ./velodyne-msgs {};

 velodyne-pcl = self.callPackage ./velodyne-pcl {};

 velodyne-pointcloud = self.callPackage ./velodyne-pointcloud {};

 velodyne-simulator = self.callPackage ./velodyne-simulator {};

 video-stream-opencv = self.callPackage ./video-stream-opencv {};

 view-controller-msgs = self.callPackage ./view-controller-msgs {};

 virtual-force-publisher = self.callPackage ./virtual-force-publisher {};

 vision-msgs = self.callPackage ./vision-msgs {};

 vision-opencv = self.callPackage ./vision-opencv {};

 vision-visp = self.callPackage ./vision-visp {};

 visp-auto-tracker = self.callPackage ./visp-auto-tracker {};

 visp-bridge = self.callPackage ./visp-bridge {};

 visp-camera-calibration = self.callPackage ./visp-camera-calibration {};

 visp-hand2eye-calibration = self.callPackage ./visp-hand2eye-calibration {};

 visp-tracker = self.callPackage ./visp-tracker {};

 visualization-marker-tutorials = self.callPackage ./visualization-marker-tutorials {};

 visualization-msgs = self.callPackage ./visualization-msgs {};

 visualization-rwt = self.callPackage ./visualization-rwt {};

 visualization-tutorials = self.callPackage ./visualization-tutorials {};

 viz = self.callPackage ./viz {};

 vl53l1x = self.callPackage ./vl53l1x {};

 voice-text = self.callPackage ./voice-text {};

 volta-base = self.callPackage ./volta-base {};

 volta-control = self.callPackage ./volta-control {};

 volta-description = self.callPackage ./volta-description {};

 volta-localization = self.callPackage ./volta-localization {};

 volta-msgs = self.callPackage ./volta-msgs {};

 volta-navigation = self.callPackage ./volta-navigation {};

 volta-rules = self.callPackage ./volta-rules {};

 volta-teleoperator = self.callPackage ./volta-teleoperator {};

 voxel-grid = self.callPackage ./voxel-grid {};

 vrpn = self.callPackage ./vrpn {};

 vrpn-client-ros = self.callPackage ./vrpn-client-ros {};

 warehouse-ros = self.callPackage ./warehouse-ros {};

 warehouse-ros-sqlite = self.callPackage ./warehouse-ros-sqlite {};

 warthog-control = self.callPackage ./warthog-control {};

 warthog-description = self.callPackage ./warthog-description {};

 warthog-desktop = self.callPackage ./warthog-desktop {};

 warthog-gazebo = self.callPackage ./warthog-gazebo {};

 warthog-msgs = self.callPackage ./warthog-msgs {};

 warthog-simulator = self.callPackage ./warthog-simulator {};

 warthog-viz = self.callPackage ./warthog-viz {};

 web-video-server = self.callPackage ./web-video-server {};

 webkit-dependency = self.callPackage ./webkit-dependency {};

 webots-ros = self.callPackage ./webots-ros {};

 wfov-camera-msgs = self.callPackage ./wfov-camera-msgs {};

 wge100-camera = self.callPackage ./wge100-camera {};

 wge100-camera-firmware = self.callPackage ./wge100-camera-firmware {};

 wge100-driver = self.callPackage ./wge100-driver {};

 wifi-ddwrt = self.callPackage ./wifi-ddwrt {};

 willow-maps = self.callPackage ./willow-maps {};

 wireless-msgs = self.callPackage ./wireless-msgs {};

 wireless-watcher = self.callPackage ./wireless-watcher {};

 ws281x = self.callPackage ./ws281x {};

 wu-ros-tools = self.callPackage ./wu-ros-tools {};

 xacro = self.callPackage ./xacro {};

 xmlrpcpp = self.callPackage ./xmlrpcpp {};

 xpp = self.callPackage ./xpp {};

 xpp-examples = self.callPackage ./xpp-examples {};

 xpp-hyq = self.callPackage ./xpp-hyq {};

 xpp-msgs = self.callPackage ./xpp-msgs {};

 xpp-quadrotor = self.callPackage ./xpp-quadrotor {};

 xpp-states = self.callPackage ./xpp-states {};

 xpp-vis = self.callPackage ./xpp-vis {};

 xsens-mti-driver = self.callPackage ./xsens-mti-driver {};

 xv-11-laser-driver = self.callPackage ./xv-11-laser-driver {};

 ypspur = self.callPackage ./ypspur {};

 ypspur-ros = self.callPackage ./ypspur-ros {};

 zbar-ros = self.callPackage ./zbar-ros {};

 zdepth = self.callPackage ./zdepth {};

 zdepth-image-transport = self.callPackage ./zdepth-image-transport {};

}
